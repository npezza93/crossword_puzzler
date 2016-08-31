module WordSearch
  module TwoDimensional
    class PositionWord < PositionWord::Base
      private

      def place_letter(letter)
        plane[coordinate.x][coordinate.y].letter = letter
      end

      def update_coordinates
        coordinate.x += direction.x
        coordinate.y += direction.y
      end

      def positive_last_coordinates?
        last_x >= 0 && last_y >= 0
      end

      def last_coordinates_in_plane?
        last_x < plane.x && last_y < plane.y
      end

      def letter_at(position)
        plane.dig(
          coordinate.x + position * direction.x,
          coordinate.y + position * direction.y
        ).letter
      end
    end
  end
end
