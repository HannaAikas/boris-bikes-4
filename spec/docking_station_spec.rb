require 'docking_station'
require 'bike'

describe DockingStation do
    it 'responds to release_bike' do
        expect(subject).to respond_to :release_bike
    end
    # THE BELOW TEST HAS BEEN COMMENTED OUT BECAUSE IT WORKED IN STEP 10 (WHEN release_bike CREATED A NEW INSTANCE OF BIKE) BUT NO LONGER WORKS IN STEP 12
    it 'releases working bikes' do
        subject.dock(Bike.new)
        bike = subject.release_bike
        expect(bike).to be_working
    end
    it { is_expected.to respond_to(:dock).with(1).argument }

    it { is_expected.to respond_to(:bike) }

    it 'docks something' do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
    end

    describe '#release_bike' do
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end

      it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
      end

    end

    describe '#dock' do
        it "does not allow to dock if station is full" do
            subject.dock(Bike.new)
            expect { subject.dock(Bike.new) }.to raise_error "Station full, cannot dock bike."
        end
    end
        
end
