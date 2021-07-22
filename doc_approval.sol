pragma solidity ^0.5.0;

contract doc_approval
{
    uint public user_count=0;
    address owner;
    
    enum role {employee, admin, super_admin}
    
    struct user
    {
        uint employee_id;
        role employee_role;
        string employee_name;
    }
    mapping(address => user) public company_users;
    
    struct document
    {
        string document_id;
        uint created_by;
        uint approved_admin_id;
        uint approved_superadmin_id;
        uint document_type;
    }
    
    modifier only_owner() 
    {
        require(msg.sender == owner, "You are not the owner.");
        _;
    }
    
    constructor() public 
    {
        owner = msg.sender;
        user_count++;
        company_users[msg.sender] = user(user_count, role.super_admin,"SA Rajesh");
    }
    
    function add_user(address _employee_address, role _employee_role, string memory _employee_name) public returns (bool)
    {
        require(company_users[msg.sender].employee_id != 0, "You are not an user of this system.");
        require(company_users[_employee_address].employee_id == 0, "User already exist.");
        require(company_users[msg.sender].employee_role == role.super_admin || (company_users[msg.sender].employee_role == role.admin && (_employee_role == role.employee || _employee_role == role.admin)), "You cannot add this usertype.");

        user_count++;
        company_users[_employee_address] = user(user_count, _employee_role, _employee_name);
    }

    
}
