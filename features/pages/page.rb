module CompareEnergy
  class Page
    def supplier
      YourSupplier.new
    end

    def energy
      YourEnergy.new
    end

    def electrical_energy
      YourElectricity.new
    end

    def gas_energy
      YourGas.new
    end

    def energy_usage
      YourEnergyUsage.new
    end

    def preferences
      YourPreferences.new
    end

    def results
      YourResults.new
    end
  end

end
World CompareEnergy