package WebCalc.Model;

public enum BinaryOperationsEnum implements IFBinaryOp{

	DIVIDE  ("divide", (l, r) -> l / r),
    MULTIPLY("multiply", (l, r) -> l * r),
    MINUS   ("minus", (l, r) -> l - r),
    PLUS    ("plus", (l, r) -> l + r);

    private String name;
    private IFBinaryOp binaryOperator;

    private BinaryOperationsEnum(String name, IFBinaryOp binaryOp) {
        this.name = name;
        this.binaryOperator = binaryOp;
    }

    public String getName() {
        return this.name;
    }

    public IFBinaryOp getBinOp() {
        return this.binaryOperator;
    }


    @Override
    public double calculateBinaryOp(final double left, final double right) {
        return binaryOperator.calculateBinaryOp(left, right);
    }
	
}
