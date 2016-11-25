require 'rails_helper'

describe User do
  let(:user) { User.new }

  describe ".recent" do
    it "returns most recent game created" do
      4.times do
        game = Game.new
        game.user_throw = Game::THROWS.sample
        game.computer_throw = Game::THROWS.sample
        game.save
      end
      agame = Game.new
      agame.user_throw = Game::THROWS.sample
      agame.computer_throw = Game::THROWS.sample
      agame.save

      expect(Game.all.recent.first).to eq agame
    end
  end

  describe "#throw_for_computer" do
    context "when the game already has a computer throw" do
      it "returns the computer throw" do
        game.computer_throw = "paper"
        expect(game.throw_for_computer).to eq "paper"
      end
    end

    context "when the game does not have a computer throw" do
      it "generates a throw" do
        expect(game.throw_for_computer).to be_in Game::THROWS
      end

      it "sets the computer throw to the generated throw" do
        expect(game.computer_throw).to be_nil
        generated_computer_throw = game.throw_for_computer
        expect(game.computer_throw).to eq generated_computer_throw
      end
    end
  end

  describe "#computer_throw" do
    describe "validations" do
      it "is valid when it's rock" do
        game.computer_throw = 'rock'
        game.valid?
        expect(game.errors[:computer_throw]).to be_empty
      end

      it "is valid when it's paper" do
        game.computer_throw = 'paper'
        game.valid?
        expect(game.errors[:computer_throw]).to be_empty
      end

      it "is valid when it's scissors" do
        game.computer_throw = 'scissors'
        game.valid?
        expect(game.errors[:computer_throw]).to be_empty
      end

      it "is NOT valid when it's pineapple" do
        game.computer_throw = 'pineapple'
        game.valid?
        expect(game.errors[:computer_throw]).to_not be_empty
      end
    end
  end

  describe "#user_throw" do
    describe "validations" do
      it "is valid when it's rock" do
        game.user_throw = 'rock'
        game.valid?
        expect(game.errors[:user_throw]).to be_empty
      end

      it "is valid when it's paper" do
        game.user_throw = 'paper'
        game.valid?
        expect(game.errors[:user_throw]).to be_empty
      end

      it "is valid when it's scissors" do
        game.user_throw = 'scissors'
        game.valid?
        expect(game.errors[:user_throw]).to be_empty
      end

      it "is NOT valid when it's pineapple" do
        game.user_throw = 'pineapple'
        game.valid?
        expect(game.errors[:user_throw]).to_not be_empty
      end
    end
  end

  describe "#winner" do
    it "computer is the winner when the computer throw beats the user throw" do
      game.user_throw = "scissors"
      game.computer_throw = "rock"

      expect(game.winner).to eq "computer"
    end

    it "user is the winner when the user throw beats the computer throw" do
      game.user_throw = "rock"
      game.computer_throw = "scissors"

      expect(game.winner).to eq "user"
    end
  end

  describe "#winner_throw" do
    it "returns the user throw when the user wins" do
      game.user_throw = "paper"
      game.computer_throw = "rock"

      expect(game.winner_throw).to eq game.user_throw
    end

    it "returns the computer throw when the computer wins" do
      game.user_throw = "rock"
      game.computer_throw = "paper"

      expect(game.winner_throw).to eq game.computer_throw
    end
  end

  describe "#loser_throw" do
    it "returns the user throw when the computer wins" do
      game.user_throw = "paper"
      game.computer_throw = "rock"

      expect(game.winner_throw).to eq game.user_throw
    end


    it "returns the computer throw when the user wins" do
      game.user_throw = "paper"
      game.computer_throw = "rock"

      expect(game.winner_throw).to eq game.user_throw
    end
  end

  describe "#user_won?" do
    it "returns true if user won" do
      game.user_throw = 'paper'
      game.computer_throw = 'rock'

      expect(game.user_won?).to be true
    end

    it "returns false if user lost" do
      game.user_throw = 'rock'
      game.computer_throw = 'paper'

      expect(game.user_won?).to be false
    end
  end
end
