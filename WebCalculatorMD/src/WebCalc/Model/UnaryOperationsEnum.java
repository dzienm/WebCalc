package WebCalc.Model;

public enum UnaryOperationsEnum implements IFUnaryOp{

	SQRT  ("sqrt", (a) -> Math.sqrt(a)),
    PERCENT("percent", (a) -> a/100.0),
    DEFAULT("default", (a) -> a);

    private String name;
    private IFUnaryOp unaryOperator;

    private UnaryOperationsEnum(String name, IFUnaryOp unaryOp) {
        this.name = name;
        this.unaryOperator = unaryOp;
    }

    public String getName() {
        return this.name;
    }

    public IFUnaryOp getBinOp() {
        return this.unaryOperator;
    }


    @Override
    public double calculateUnaryOp(final double argument) {
        return unaryOperator.calculateUnaryOp(argument);
    }
	
}
