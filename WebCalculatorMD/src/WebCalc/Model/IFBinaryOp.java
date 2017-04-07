package WebCalc.Model;
/**
 * Created by mdziendzikowski on 2016-12-16.
 */

@FunctionalInterface
public interface IFBinaryOp {

    public double calculateBinaryOp(double left, double right);

}

