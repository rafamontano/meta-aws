<<<<<<< HEAD
# Findcore_mqtt.cmake
=======
>>>>>>> a2722f5b (Adding aws-iot-device-sdk-embedded-c-mqtt-demo-plaintext, backoffalgorithm, coremqtt, corehttp, sigv4)
find_path(CORE_MQTT_INCLUDE_DIR core_mqtt.h
          PATHS ${CMAKE_INSTALL_PREFIX}/include
          PATH_SUFFIXES core_mqtt)

find_library(CORE_MQTT_LIBRARY
             NAMES core_mqtt
             PATHS ${CMAKE_INSTALL_PREFIX}/lib)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(core_mqtt DEFAULT_MSG
                                  CORE_MQTT_LIBRARY CORE_MQTT_INCLUDE_DIR)

mark_as_advanced(CORE_MQTT_INCLUDE_DIR CORE_MQTT_LIBRARY)

if(core_mqtt_FOUND AND NOT TARGET core_mqtt::core_mqtt)
  add_library(core_mqtt::core_mqtt UNKNOWN IMPORTED)
  set_target_properties(core_mqtt::core_mqtt PROPERTIES
    IMPORTED_LOCATION "${CORE_MQTT_LIBRARY}"
    INTERFACE_INCLUDE_DIRECTORIES "${CORE_MQTT_INCLUDE_DIR}")
<<<<<<< HEAD
endif()
=======
endif()
>>>>>>> a2722f5b (Adding aws-iot-device-sdk-embedded-c-mqtt-demo-plaintext, backoffalgorithm, coremqtt, corehttp, sigv4)
