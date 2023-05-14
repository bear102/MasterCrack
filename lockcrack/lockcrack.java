package lockcrack;

import java.util.ArrayList;
import java.util.List;

public class lockcrack {
    public static void main(String[] args) {
        List<Integer> second = new ArrayList<>();
        List<Integer> third = new ArrayList<>();

        int firstLockedPosition = 4;
        int secondLockedPosition = 7;
        int resistantLocation = 23;
        int looseThird = 4;

        // Calculates the first number
        int first = (int) (Math.ceil(resistantLocation) + 5) % 40;
        int mod = first % 4;

        // Calculates the third numbers
        for (int i = 0; i < 4; i++) {
            if (((10 * i) + firstLockedPosition) % 4 == mod) {
                third.add((10 * i) + firstLockedPosition);
            }

            if (((10 * i) + secondLockedPosition) % 4 == mod) {
                third.add((10 * i) + secondLockedPosition);
            }
        }

        // Calculates the second numbers
        int x;
        if (looseThird == third.get(0)) {
            x = 1;
        } else {
            x = 2;
        }

        for (int i = 0; i < 10; i++) {
            int tmp = ((mod + 2) % 4) + (4 * i);
            if (x == 0 || ((third.get(x - 1) + 2) % 40 != tmp && (third.get(x - 1) - 2) % 40 != tmp)) {
                second.add(tmp);
            }
        }

        System.out.println("First: " + first);
        System.out.println("Second: " + second);
        System.out.println("Third: " + third);
    }
}
