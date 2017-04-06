package WebCalc;

public class Calc {

	private String result = "0";

	public String getResult() {
		return result;
	}

	public void setResult(String _result) {
		if(_result.charAt(0)=='0'){
			if(_result.length()>1){
				_result = _result.substring(1);
			}
		}
		this.result = _result;
	}

	
	
}
