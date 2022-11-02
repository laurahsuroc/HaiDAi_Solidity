pragma solidity ^ 0.8.14.0

contract class23 {

    uint256 public integer_1 = 1;
    uint256 public integer_2 = 2;
    string public string_1;

    event setNumber(string _from);
   // 事件 事件名稱 你要記錄的東西
    
    //pure 不讀鏈上資料 不改鏈上資料 不須gas 
    function function_1 (uint a, uintb) public pure returns(uint256){
        return a + 2*b;
    }
    // pure 讀鏈上資料 不改鏈上資料 不須gas
    function function_2()public view returns(uint256){
        returns integer_1 + integer_2;
    }
    // 修改鏈上資料 需要gas 
    function function_3(string x) public returns(string){
        string_1 = x;
        emit setNumber(string_1);
        return string_1;
    }

    // 實作事件


