<?php
/**
 * all ajax call will be handle from here
 * */
class Updator{

    private $db;

    public function __construct() {
        if (method_exists($this,$_POST['action'])){
            $this->{$_POST['action']}($_POST);
        }
    }

    /**
     * Connect With DB
     * @since 1.0.0
     * */

    public function _db_connection_check($post){

        $db_name = $post['db_name'];
        $db_username = $post['db_username'];
        $db_host = $post['db_host'];
        $db_password = $post['db_password'];
        $change_log = file_get_contents(__DIR__.'/change-logs.json');
        $change_log = json_decode($change_log);
        $update_version = is_object($change_log) && property_exists($change_log,'version') ? $change_log->version : '';

        try {

            $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_username, $db_password);
            // set the PDO error mode to exception
            $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            if (!empty($update_version)){
                $sql = $db->prepare("UPDATE `static_options` SET `option_value` ='{$update_version}' WHERE `static_options`.`option_name` = 'site_script_version'");
                $sql->execute();
            }
            $this->db = $db;
            $this->message([
                'msg' => 'Database Connected Successfully',
                'type' => 'success'
            ]);

        } catch(PDOException $e) {
            $this->message(
               [
                   'msg' => $e->getMessage(),
                   'type' => 'danger'
               ]
            );
        }
    }


    /**
     * it will replace updated migration in @core folder
     * @since 1.0.0
     * */
    public function updated_migration_file(){
        $update_file_path = __DIR__.'/migrations';
        $old_file_path = __DIR__.'/../@core/database/migrations';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);
        $this->message([
            'type' => 'success',
            'msg' => "Migrations Updated Successfully"
        ]);
    }



    /**
     * it will replace updated assets (folder) in @core folder
     * @since 1.0.0
     * */
    public function update_assets_file(){
        $update_file_path = __DIR__.'/assets';
        $old_file_path = __DIR__.'/../assets';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);
        $this->message([
            'type' => 'success',
            'msg' => "Assets Files Updated Successfully"
        ]);
    }


    /**
     * it will replace updated app (folder) in @core folder
     * @since 1.0.0
     * */
    public function _update_core_files(){
        $update_file_path = __DIR__.'/app';
        $old_file_path = __DIR__.'/../@core/app';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);
        $this->message([
            'type' => 'success',
            'msg' => "Core Files Updated Successfully"
        ]);
    }
    /**
     * it will replace updated Modules (folder) in @core folder
     * @since 1.0.0
     * */
    public function update_module_file(){
        $update_file_path = __DIR__.'/modules';
        $old_file_path = __DIR__.'/../@core/Modules';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);
        $this->message([
            'type' => 'success',
            'msg' => "Module Files Updated Successfully"
        ]);
    }

    /**
     * it will replace updated route in @core folder
     * @since 1.0.0
     * */
    public function update_route_file(){
        $update_file_path = __DIR__.'/route';
        $old_file_path = __DIR__.'/../@core/routes';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);
        $this->message([
            'type' => 'success',
            'msg' => "Route Updated Successfully"
        ]);
    }

    /**
     * it will replace updated resource (folder files) in @core folder
     * @since 1.0.0
     * */
    public function update_resources_files(){

        $update_file_path = __DIR__.'/resources';
        $old_file_path = __DIR__.'/../@core/resources';

        try {
            $this->ReplaceFileFolder($update_file_path,$old_file_path);
        }catch (\Exception $e){
            $this->message([
                'type' => 'success',
                'msg' => $e->getMessage()
            ]);
        }
        $this->message([
            'type' => 'success',
            'msg' => "Views Updated Successfully"
        ]);
    }


    /**
     * it will replace updated vendor in @core folder
     * @since 1.0.0
     * */
    public function update_vendors_file(){
        $update_file_path = __DIR__.'/vendor';
        $old_file_path = __DIR__.'/../@core/vendor';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);
        $this->message([
            'type' => 'success',
            'msg' => "Vendor File Updated Successfully"
        ]);
    }

    /**
     * it will replace updated custom module in @core folder
     * @since 1.0.0
     * */
    public function update_seeds_file(){
        $update_file_path = __DIR__.'/seeds';
        $old_file_path = __DIR__.'/../@core/database/seeds';
        $this->ReplaceFileFolder($update_file_path,$old_file_path);
        $this->message([
            'type' => 'success',
            'msg' => "Seeds File Updated Successfully"
        ]);
    }

    /**
     * update custom file
     * @since 1.0.0
     * */
    public function update_custom_file(){
        $change_log_file = file_get_contents(__DIR__.'/change-logs.json');
        $change_log_list = json_decode($change_log_file);
        $custom_files = is_object($change_log_list) && property_exists($change_log_list,'custom') ? $change_log_list->custom : [];

        foreach ($custom_files as $file){
            if (is_dir('../' . $file->path) && file_exists(  '../' . $file->path)) {
                $update_file_content = file_get_contents( 'custom/' . $file->filename);
                file_put_contents( '../' . $file->path . '/' . $file->filename, $update_file_content);
            } else {
                if (!mkdir($concurrentDirectory =  '../' . $file->path, 0755, true) && !is_dir($concurrentDirectory)) {
                    throw new \RuntimeException(sprintf('Directory "%s" was not created', $concurrentDirectory));
                }
                $update_file_content = file_get_contents(  'custom/' . $file->filename);
                file_put_contents( '../' . $file->path . '/' . $file->filename, $update_file_content);
            }
        }

        $this->message([
            'type' => 'success',
            'msg' => "Custom Files Updated Successfully"
        ]);

    }

    /**
     * update file and folder base on given path
     * @since 1.0.0
     * */
    public function ReplaceFileFolder($update_file_path,$old_file_path){

        $all_update_views = $this->get_file_list_by_directory($update_file_path);
        $all_old_views = $this->get_file_list_by_directory($old_file_path);
        foreach ($all_update_views as $new_file){
            if (is_dir($update_file_path.'/'.$new_file)){
                $old_file = array_search($new_file,$all_old_views);
                $folder_name = isset($all_old_views[$old_file]) ? $all_old_views[$old_file] : '';
                if (!file_exists($old_file_path.'/'.$new_file)){
                    if (!mkdir($concurrentDirectory = $old_file_path . '/' . $new_file) && !is_dir($concurrentDirectory)) {
                        throw new \RuntimeException(sprintf('Directory "%s" was not created', $concurrentDirectory));
                    }
                    $folder_name = $new_file;
                }
                $this->ReplaceFileFolder($update_file_path.'/'.$new_file,$old_file_path.'/'.$folder_name);
            }else{
                $file_index = array_search($new_file, $all_old_views);
                $update_file_path_new = $update_file_path ;
                $script_old_file_path = $old_file_path ;

                $folder_name = $all_old_views[$file_index] ?? $new_file;
                $update_able_file_size = $this->get_file_size($update_file_path_new .'/'.$new_file);
                $script_able_file_size = $this->get_file_size($script_old_file_path.'/'.$folder_name);

                if ($update_able_file_size != $script_able_file_size) {
                    $this->update_file($update_file_path.'/'.$new_file, $script_old_file_path.'/'.$folder_name);
                }elseif(!is_dir($script_old_file_path) && !file_exists($script_old_file_path.'/'.$new_file)){
                    file_put_contents($script_old_file_path.'/'.$new_file,file_get_contents($update_file_path_new.'/'.$new_file));
                }
            }
        }
    }


    /**
     * get file list by directory
     * @since 1.0.0
     * */
    public function get_file_list_by_directory($dir){
        $get_file = array_diff(scandir($dir), array('.', '..', '.DS_Store'));
        return $get_file;
    }

    /**
     * update file
     * @since 1.0.0
     * */
    public function update_file($update_file, $old_file)
    {
        $update_data = file_get_contents($update_file);
        file_put_contents($old_file, $update_data);
    }

    /**
     * get file size
     * @since 1.0.0
     * */
    public function get_file_size($file_path){
        return  file_exists($file_path) ? filesize($file_path) : 0;
    }
    /**
     * convert msg to JSON
     * @since 1.0.0
     * */
    public function message($msg){
        echo json_encode($msg);
    }

}

new Updator();
