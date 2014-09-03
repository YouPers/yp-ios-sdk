/**
 *  Copyright 2012 Wordnik, Inc.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *       ("Podfile.mustache", outputFolder, "Podfile")
 */

import com.wordnik.swagger.codegen.BasicObjcGenerator

object ObjcYouPersCodegen extends BasicObjcGenerator {
  def main(args: Array[String]) = generateClient(args)

  // where to write generated code
  val outputFolder = "samples/client/YPSwaggerApi/objc/"
  override def destinationDir = outputFolder + java.io.File.separator + "src"

  // to avoid recompiling ...
  override def templateDir = "objc"

  additionalParams ++= Map("projectName" -> "YPSwaggerApi")

  // supporting classes
  override def supportingFiles =
    List(
      ("YPObject.h", destinationDir, "YPObject.h"),
      ("YPObject.m", destinationDir, "YPObject.m"),
      ("YPObjectId.h", destinationDir, "YPObjectId.h"),
      ("YPObjectId.m", destinationDir, "YPObjectId.m"),
      ("YPApiClient.h", destinationDir, "YPApiClient.h"),
      ("YPApiClient.m", destinationDir, "YPApiClient.m"),
      ("YPFile.h", destinationDir, "YPFile.h"),
      ("YPFile.m", destinationDir, "YPFile.m"),
      ("YPDate.h", destinationDir, "YPDate.h"),
      ("YPDate.m", destinationDir, "YPDate.m"),
      ("YPError.h", destinationDir, "YPError.h"),
      ("YPError.m", destinationDir, "YPError.m")
    )
}
