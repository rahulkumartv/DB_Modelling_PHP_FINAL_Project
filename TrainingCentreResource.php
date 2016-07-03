<?php

require_once("HttpResource.php");
require_once("TrainingCentreDB.php");

class TrainingCentreResource extends HttpResource {
 

  /** Initialize $id. Send 400 if id missing or not positive integer */
  public function init() {
   
  }

  protected function do_get() {
    // Call the parent
    parent::do_get();
    try {
      
  }

   protected function do_post() {
   
  }

  protected function do_put() {
   
  }

  protected function do_delete() {
   
  }
}

// Simply run the resource
PersonResource::run();
?>