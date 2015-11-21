// Prints out the number of cores for JVM.
public class NumberOfCores {
    public static void main(String[] args) {
        int cores = Runtime.getRuntime().availableProcessors();
        System.out.println(cores);
    }
}
