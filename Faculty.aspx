<%@ Page Title="" Language="C#" MasterPageFile="~/GenMaster.master" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="Faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>CVGClub: Faculty</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" Runat="Server">
    <div class="container-fluid">  
        <div id="Carousel1" class="carousel" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#Carousel1" data-slide-to="0" class="active"></li>
                <li data-target="#Carousel1" data-slide-to="1"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
            <div class="item active">
                <img src="Images/DevSlide/DevSlide1.JPG"/>
                <div class="carousel-caption">
                    <h3>Developer 1</h3>
                </div>
            </div>
            <div class="item">
                <img src="Images/DevSlide/DevSlide2.JPG"/>
                <div class="carousel-caption">
                    <h3>Developer 2</h3>
                </div>
            </div>            
        </div>
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#Carousel1" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#Carousel1" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div><br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-4">
                <br />
                <h3 style="font-weight:bold;">Hon'ble Voice Chancellor :</h3>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6"><img alt="VC Sir" src="Images/Faculty/vc1.png" style="width:100%;" /></div>
                    <div class="col-sm-3"></div>
                </div><br />
                <p style="font-size:140%;font-family:Calibri;text-align:justify;">
                    &ensp;&ensp;&ensp;&ensp;The pursuit of technological excellence in this highly competitive global economic environment
                    holds the key to success of a country in its endeavour to afford good living standards to its people.
                    Sir, Chhotu Ram institute of Engineering & Technology at Ch. Charan Singh University, Meerut offers a range of distinctive
                    academic programmes in areas of Engineering & Technology, Management and Computer Application with the
                    explicit objective of hamessing and cultivating the capabilities of the young minds in their respective fields.
                    To achieve this end, we are committed to provide the best possible educational facilities to train students for career in technology
                    and science. In addition to the academic activities, the institute provides ambience for all-round development
                    of the personality of the student through its continuous emphasis on co-currical activities like sports, academic
                    and industrial tours and cultural and social-service activities.
                    I hope the students joining us shall be able to make best use of the physical and human infrastructure available at the institute
                    to realise their dreams of achieving higher levels of technological competence in their chosen specialty.</p>
                <p style="font-size:140%;text-align:center;font-weight:bold;">
                    Prof. N K Taneja<br />
                    Vice Chancellor<br />
                    C.C.S. University, Meerut
                </p>
            </div>
            <div class="col-sm-4">
                <br /><h3 style="font-weight:bold;">Director :</h3>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6"><img alt="Director Sir" src="Images/Faculty/dir.jpg" style="width:100%;" /></div>
                    <div class="col-sm-3"></div>
                </div><br />
                <p style="font-size:140%;font-family:Calibri;text-align:justify;">
                    &ensp;&ensp;&ensp;&ensp;I am pleased to convey my good wishes to the entire
                    team who have taken great pains to take out this comprehensive and informative
                    brochure for the Session 2016. This brochure is designed and prepared to provide
                    you the detailed information about available infrastructure, faculty members and
                    administrative staff at SCRIET Campus. Due to Co-location with CCS University
                    Campus Meerut, all other sports and hostel facilities are also readily available 
                    for the use by our students. We have very qualified and well trained teaching and
                    supporting administrative staff to impart quality education to make you a successful
                    engineer, entrepreneur and administrators in different professional fields. As our mission
                    and vision emphasis on imparting practical training by engaging students in group
                    discussions, seminars and presentations related to their subjects, so that they can
                    apply their professional knowledge and skills for the betterment of society. Therefore,
                    you must work hard, so that, you may live up to the expectations of your friends teachers
                    and parents to be successful professionals in the challenging world. I, wish you all a
                    successful career in your future life.</p>
                <p style="font-size:140%;text-align:center;font-weight:bold;">
                    Dr. Sohan Garg<br />
                    Director<br />
                    SCRIET-CCSU, Meerut
                </p>
            </div>
            <div class="col-sm-4">
                <br /><h3 style="font-weight:bold;">Dy Director :</h3>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6"><img alt="Dy Director Sir" src="Images/Faculty/dy-dir.jpg" style="width:100%;" /></div>
                    <div class="col-sm-3"></div>
                </div><br />
                <p style="font-size:140%;font-family:Calibri;text-align:justify;">
                    &ensp;&ensp;&ensp;&ensp;It gives me immense pleasure to pen down
                    my thoughts for the aspirants of professional & technical undergraduate
                    & post graduate programmes of CCS University Campus, Meerut. Readers
                    of this message are definitely going to be part of country's mission
                    of becoming self reliant and to boost 'Make in India' movement by undergoing
                    rigorous and sincere learning process of an engineering and management
                    Institutions of this university which is one of the oldest & reputed
                    universities of our Country. A well laid out programme of
                    personality grooming induction of well designed workshops in each semester
                    and exposure to industrial work culture by organising regular Guest lectures
                    & Industrial visits. We believe in overall development of the students personalities
                    and skills in sports, cultural and other related fields, to face the challenges which
                    they shall be encountering in their future work places, industrial establishments and
                    business houses. I, Welcome to Sir Chhotu Ram Institute of Engineering & Technology
                    & Institute of Business studies for a worth while and purposeful stay in the campus.
                    All the best wishes for a promising career ahead.</p>
                <p style="font-size:140%;text-align:center;font-weight:bold;">
                    Dr. Rajeev Sijariya<br />
                    Dy. Director<br />
                    SCRIET-CCSU, Meerut
                </p>
            </div>
        </div>
    </div><br />
    
    <br /><footer class="container-fluid text-center">
        <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a><br />
        <h4>eSCRIET &copy; SCRIET, Meerut</h4>
        <p>Developed by - Shivam & Company, SCRIET-CCSU, Meerut (240001)</p>
    </footer>

</asp:Content>

