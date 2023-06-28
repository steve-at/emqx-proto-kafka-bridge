# TODO:

   * trying all message canidates (loop over canidates and encode)
   * get the id of the proper message
   * generate a prefix for the id
   * update the state
   * implement a scheduler that checks every 1h, if registry is not available keep last prefix



## Features:


   * mqtt topics will result in kafka topics only with _ instead of /
   * schemas are checked at the beginning of an subscription. 
   * write messages with a wrong schema to diffeerent topic [mqtt: mdi-lab/xsens, kafka-schema ->  mdi-lab_xsens_no-schema, kafka+schema -> mdi-lab_xsens ]
   * 