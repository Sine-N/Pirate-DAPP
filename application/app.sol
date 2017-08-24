contract PirateDAPP 
{

    struct trrnt {

        address creator;

        uint256 creationdate;

        int feedback;

        string magnet;

        
string title;

    }

    uint256 nextid = 0;

    mapping(uint256 => trrnt) public torrents;

    
    function PirateDAPP()
    {
  
      
    
    }

    function addtorrent(string magnet, string title)
    {

        torrents[nextid].magnet = magnet;

        torrents[nextid].title = title;

        torrents[nextid].creator = msg.sender;

        torrents[nextid].creationdate = block.number;

        nextid++;

    }

    
function upvote(uint256 id)
    {

        torrents[id].feedback++;

    }


    function downvote(uint256 id)
    {

        torrents[id].feedback--;
    
    }

}
