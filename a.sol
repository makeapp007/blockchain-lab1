contract lab1 {
    string public greeting="hello world!";
    address public owner;
    string public s;
    function lab1() {
        owner=msg.sender;
    }
    function greeter() public view returns(string) {
        return greeting;
    }
    function fib(int n) public view returns(int){
        int a=0;
        int b=1;
        int tmp=0;
        for(int i=1;i<n;i+=1){
            tmp=a;
            a=b;
            b=tmp+b;
        }
        return a;
    }
    function strConcat(string _a, string _b, string _c, string _d, string _e) internal returns (string){
        bytes memory _ba = bytes(_a);
        bytes memory _bb = bytes(_b);
        bytes memory _bc = bytes(_c);
        bytes memory _bd = bytes(_d);
        bytes memory _be = bytes(_e);
        string memory abcde = new string(_ba.length + _bb.length + _bc.length + _bd.length + _be.length);
        bytes memory babcde = bytes(abcde);
        uint k = 0;
        for (uint i = 0; i < _ba.length; i++) babcde[k++] = _ba[i];
        for (i = 0; i < _bb.length; i++) babcde[k++] = _bb[i];
        for (i = 0; i < _bc.length; i++) babcde[k++] = _bc[i];
        for (i = 0; i < _bd.length; i++) babcde[k++] = _bd[i];
        for (i = 0; i < _be.length; i++) babcde[k++] = _be[i];
        return string(babcde);
    }
    function strConcat(string _a, string _b) public view returns (string) {
        return strConcat(_a, _b, "", "", "");
    }
    function xor(int a, int b) public view returns(int){
        if(a==b) return 0;
        else return 1;
    }
  

}
