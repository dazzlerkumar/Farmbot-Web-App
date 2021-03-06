module Devices
  module Seeders
    class GenesisXlOneFive < AbstractGenesis
      def settings_firmware
        device
          .fbos_config
          .update!(firmware_hardware: FbosConfig::FARMDUINO_K15)
      end

      def settings_device_name
        device.update!(name: "FarmBot Genesis XL")
      end

      def settings_default_map_size_x
        device.web_app_config.update!(map_size_x: 5_900)
      end

      def settings_default_map_size_y
        device.web_app_config.update!(map_size_y: 2_900)
      end
    end
  end
end
