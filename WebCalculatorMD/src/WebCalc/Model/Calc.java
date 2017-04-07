package WebCalc.Model;

public class Calc {

	private String result;
	private BinaryOperationsEnum binaryOp;
	private Double cacheResultNum;
	private boolean afterCalculate;
	
	public Calc(){
		result = "0";
		binaryOp = BinaryOperationsEnum.PLUS;
		cacheResultNum = new Double(0);
		afterCalculate = false;
	}
	
	public String getResult() {
		return result;
	}

	public void setResult(String _result) {
		if(_result.charAt(0)=='0'&!_result.contains(".")){
			if(_result.length()>1){
				_result = _result.substring(1);
			}
		}
		this.result = _result;
	}

	public void setBinaryOp(String _binOpSelected){
		for (BinaryOperationsEnum op : BinaryOperationsEnum.values()) {
			
			if(op.getName().equals(_binOpSelected)){
				this.binaryOp = op;
			}
		}
	}
	
	public void calculateUnaryOp(String _unOpSelected) throws IllegalStateException{
		IFUnaryOp unOpSelected = UnaryOperationsEnum.DEFAULT; //inicjalizacja na brak zmian, cos podobnego mozna w sumie dac do binaryOp typu (l,r) -> l
		
		for (UnaryOperationsEnum op : UnaryOperationsEnum.values()) {

			if(op.getName().equals(_unOpSelected)){
				unOpSelected = op;
			}
		}
		
		Double resultUpdate = Double.parseDouble(this.result);
		resultUpdate = unOpSelected.calculateUnaryOp(resultUpdate);
		if (resultUpdate.isNaN())
		{
			throw new IllegalStateException();
		}
		this.result = resultUpdate.toString();
		
	}
	
	public void setDot(){
		if(!this.result.contains(".")){
			this.result = this.result + ".";
		}
	}
	
	public void setPlusMinus(){
		if(this.result.contains("-")){
			this.result = this.result.substring(1);
		}
		else if(this.result.equals("0")){
			
		}
		else{
			this.result = "-" + this.result;
		}
	}
	
	public void calculateResult(boolean binOpSelected) throws IllegalStateException{
		if(binOpSelected){
			if(!afterCalculate){
				Double currentDigitizer = Double.parseDouble(this.result);
				Double resultNum = binaryOp.calculateBinaryOp(cacheResultNum, currentDigitizer);
				if(resultNum.isInfinite()){
					throw new IllegalStateException();
				}
				this.cacheResultNum = resultNum;
			}	
			else{
				afterCalculate = false;
			}
			this.result = "0";
		}
		
		else{
			Double currentDigitizer = Double.parseDouble(this.result);
			Double resultNum = binaryOp.calculateBinaryOp(cacheResultNum, currentDigitizer);
			if(resultNum.isInfinite()){
				throw new IllegalStateException();
			}
			this.cacheResultNum = resultNum;
			this.result = resultNum.toString();
			this.afterCalculate = true;
		}
			
	}
	
}
