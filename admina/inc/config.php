<?php
ini_set( "display_errors", true );
define( "HOST", "localhost" );
/*//nama database
define( "DATABASE_NAME", "apptirexco_db" );
define( "DB_USERNAME", "apptirexco_root" );
//password mysql
define( "DB_PASSWORD", "Admin252515" );
//dir admin
define( "DIR_ADMIN", "admina/");
//main directory
define( "DIR_MAIN", "/");*/

//nama database
define( "DATABASE_NAME", "tirex" );
define( "DB_USERNAME", "root" );
//password mysql
define( "DB_PASSWORD", "" );
//dir admin
define( "DIR_ADMIN", "cargomurah/admina/");
//main directory
define( "DIR_MAIN", "cargomurah/");


define('DB_CHARACSET', 'utf8');

require_once ('Database.php');
require_once ('Datatable.php');
require_once ('My_pagination.php');
require_once ('url.php');

$db=new Database();
$pg=New My_pagination();
$dtable = new TableData();

function handleException( $exception ) {
  echo  $exception->getMessage();
}

set_exception_handler( 'handleException' );


?>
