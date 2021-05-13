<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title></title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        body {
            background: #eeeeee;
            font-family: 'Varela Round', sans-serif;
        }
        .navbar {
            color: #fff;
            background: #ff6600 !important;
            padding: 5px 16px;
            border-radius: 0;
            border: none;
            box-shadow: 0 0 4px rgba(0,0,0,.1);
        }
        .navbar img {
            border-radius: 50%;
            width: 36px;
            height: 36px;
            margin-right: 10px;
        }
        .navbar .navbar-brand {
            color: white;
            padding-left: 0;
            padding-right: 50px;
            font-size: 24px;
        }
        .navbar .navbar-brand:hover, .navbar .navbar-brand:focus {
            color: #fff;
        }
        .navbar .navbar-brand i {
            font-size: 25px;
            margin-right: 5px;
        }
        .search-box {
            position: relative;
        }
        .search-box input {
            padding-right: 35px;
            min-height: 38px;
            border: none;
            background: #faf7fd;
            border-radius: 3px !important;
        }
        .search-box input:focus {
            background: #fff;
            box-shadow: none;
        }
        .search-box .input-group-addon {
            min-width: 35px;
            border: none;
            background: transparent;
            position: absolute;
            right: 0;
            z-index: 9;
            padding: 10px 7px;
            height: 100%;
        }
        .search-box i {
            color: #a0a5b1;
            font-size: 19px;
        }
        .navbar .nav-item i {
            font-size: 18px;
        }
        .navbar .nav-item span {
            position: relative;
            top: 3px;
        }
        .navbar .navbar-nav > a {
            color: #efe5ff;
            padding: 8px 15px;
            font-size: 18px;
        }
        .navbar .navbar-nav > a:hover, .navbar .navbar-nav > a:focus {
            color: #fff;
            text-shadow: 0 0 4px rgba(255,255,255,0.3);
        }
        .navbar .navbar-nav > a > i {
            display: block;
            text-align: center;
        }
        .navbar .dropdown-item i {
            font-size: 16px;
            min-width: 22px;
        }
        .navbar .dropdown-item .material-icons {
            font-size: 21px;
            line-height: 16px;
            vertical-align: middle;
            margin-top: -2px;
        }
        .navbar .nav-item.open > a, .navbar .nav-item.open > a:hover, .navbar .nav-item.open > a:focus {
            color: #fff;
            background: none !important;
        }
        .navbar .dropdown-menu {
            border-radius: 1px;
            border-color: #e5e5e5;
            box-shadow: 0 2px 8px rgba(0,0,0,.05);
        }
        .navbar .dropdown-menu a {
            color: #777 !important;
            padding: 8px 20px;
            line-height: normal;
            font-size: 15px;
        }
        .navbar .dropdown-menu a:hover, .navbar .dropdown-menu a:focus {
            color: #333 !important;
            background: transparent !important;
        }
        .navbar .navbar-nav .active a, .navbar .navbar-nav .active a:hover, .navbar .navbar-nav .active a:focus {
            color: #fff;
            text-shadow: 0 0 4px rgba(255,255,255,0.2);
            background: transparent !important;
        }
        .navbar .navbar-nav .user-action {
            padding: 9px 15px;
            font-size: 15px;
        }
        .navbar .navbar-toggle {
            border-color: #fff;
        }
        .navbar .navbar-toggle .icon-bar {
            background: #fff;
        }
        .navbar .navbar-toggle:focus, .navbar .navbar-toggle:hover {
            background: transparent;
        }
        .navbar .navbar-nav .open .dropdown-menu {
            background: #faf7fd;
            border-radius: 1px;
            border-color: #faf7fd;
            box-shadow: 0 2px 8px rgba(0,0,0,.05);
        }
        .navbar .divider {
            background-color: #e9ecef !important;
        }
        @media (min-width: 1200px){
            .form-inline .input-group {
                width: 350px;
                margin-left: 30px;
            }
        }
        @media (max-width: 1199px){
            .navbar .navbar-nav > a > i {
                display: inline-block;
                text-align: left;
                min-width: 30px;
                position: relative;
                top: 4px;
            }
            .navbar .navbar-collapse {
                border: none;
                box-shadow: none;
                padding: 0;
            }
            .navbar .navbar-form {
                border: none;
                display: block;
                margin: 10px 0;
                padding: 0;
            }
            .navbar .navbar-nav {
                margin: 8px 0;
            }
            .navbar .navbar-toggle {
                margin-right: 0;
            }
            .input-group {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-xl navbar-dark bg-dark">
    <a href="index.jsp" class="navbar-brand"><img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIPEBAPEhAQDxIREBAQDxAPDhAQEBUWFhcWFhURFRMYHSggGBolGxUVITEhJSkrLjAuFx8zODMtNygtLjcBCgoKDg0OGxAQGyslICU1LS0tMi0tLS0tLy0vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tK//AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAAAQYEBQcDAgj/xABBEAACAQIDBAYIAwcBCQAAAAAAAQIDEQQFBiExQWESEyJRcZEHMkKBobHB0RRSYiNDU3JzouFEFjM0Y4KDkpPS/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAQFBgEDAv/EADARAAIAAwQIBgMAAwAAAAAAAAABAgMEBREhMRJBUWFxgaHBEyKRsdHhMkLwFCPx/9oADAMBAAIRAxEAPwDuIAAAAAAAAAAAAB8TkkrtpLi27IA+wafF6kw1O661Ta4U05/FbPiabE63X7ui2u+pK39qX1Ik2up5eEUa5Y+15MlUFTMygfPD3uLiDn9TWWIl6sKcPCLk/izGnqnGfxbeFKl9YkWK2adZKJ8vlolQ2NUPNwrm+yOkg5qtU4z+Lf8A7dL/AOTJpaxxEfWVOa5wt8mchtmneaiXJdmzsVi1CycL5vukdBBTKGt/z0Fbi4T2+TX1NvhNUYapZObpvuqRt8VsJUu0KaZgo1zvXvcRZlnVMGcD5Y+xvAeVKpGa6UZKSe5xaa80epMIQAAAAAAAAAAAAAAAAAAAAAAAAPHEYiFKLnOShFb3J2RqM91DTw14xtUq8IJ7I85Ph4FDzHM6uJl0qk3K25LZFeESuq7Rgktww4xdFxfbMsqSzY5yUUXlh6vgu5ac01ko3jQj0v1zTS90d799iq47NK1d3nUnPk3aK8EthiixnZ9bNnfm71syXpr5s0dPRSpC8iue3N+vwrtxCJTAImkyVciQQDh0EkAAkgA7pM5oq+89sLj6tF3pznB/pk0vetzLRletHsjXhdfxIbH748fcVGwJUismyfwd27V6fFxGn0cqcvOr/f17O861gsZTrx6dOamuW9cmntRlHIsJjZ0ZKdObhJd3Hk1xReMg1RCvaFW1OpuT3Ql9nyNBSWnBNuhjwfR89XBmeq7LjlXxS8V1XzxRZQAWhVAAAAAAAAAAAAAAAAqGptTdC9GhLtbp1Fuj+mPPnwJ1Zn/Qvh6T7W6pNP1f0Ln8iklHaNo6LcqU+L7Lu/Tar2zrNvumzVwXd9l67Gk73b2tu7b3vmwkSDONmiSBAAOgAkAgAAAEkAAAAAAACxFiQEzlxa9NamcbUq8m47FCo9rjyl3rnwLtGV1dbU9qfA460WrSeoeg1h6r7Ldqc2/Vf5X+n5Ggs60brpc14ans3PdsfrtKG0bNvvmSljrW3et+1emODvYAL8zwAAAAAAAAANFqfOfw1Poxf7SatD9K4zZtsTXjShKpJ2jFOTZyzN8dLE1Z1Je0+yu6K3RK20avwYNGF+Z9FrfxvLKzaRT49KJeVdXqXzuMRyvtbvxbe1vmz6IQMm3sNalcAAcOgkGyyjJKuKfZXRit8nu9x9y5cUyLRgV7PiZMhlw6UbuRrEbXBZBiK26Diu+Wwu2V6fo0En0enLjKW03CRe09iq6+a+S+ShqLaxukw838fJTcPord06nj0UZ3+xtD80/gWUFlDZ1ND+i54lbFaNVF+75YFaejqHfPzRjYrRUPYqSX820twOxWfTRfojkNoVMOUbOcY7S1eldpKolxW/yNLVpSg+jKLi+5o7AYePyylXVpwT522lfPsWB4yoruOKLCRbUawmw3rasH6ZHKSCw53padG86fbguHtIr7RQzpEyTFozFcy+kT5c+HSlu9f2ZAJIPI9iT5ZIZ1O441eXvR2d9dBUJvtwXZbe2UVw8UWk4/hK8qU41IO0otSOqZZjY4ilCrH2ltXc+KNTZdX4sHhxZrLevlZcLmZa1aPwo/EhWDz3P4efG8zAAWpUgAAAA+ZSSTb2JK7AKjrvMbKGHi/WtOp4L1V57fcimGTnGMdevUqP2pNxvwjuivKxioxdbP8ac49Wrgsu75m1oqdSJKg16+Lz+OQABEJYJBtdOZS8TVt7Eds39D7lSopsaghzZ5zZkMuBxxZIytM6flXaqTTjST2d8v8F/oUYwioxSiluSJo0lCKjFWSVkkehsaSkgp4LlnrZjqurjqY9KLLUgACWRAAfE6iW9peLSAPsHnCvF7pRfhJM9AAAACGVPUumlNOrRVpLbKC3PwLaQzxn08E+DQjX0e9PURyI1HA/vcccaadnsa2NMFu1jkvRviILZ7aS+JUUY2pp4qeY4Iv+o2NLUQ1EtRw89zAAPAkEln0PmXQqSoN9me2H89vql8EVc+qFV05xnF2lFpp807okUs9yZqjWr21keqkKdKigev31P1OxA8MHiFVpwqR3TipL3nubZNNXoxDTTuYAB04DT6qxXVYWq07Oa6tf8AVsfwubgpvpBxFo0afC85yXhZL5yIldMcuniiWeXN4dyXQS1HUQJ7b/THsUux9AGNizNnDkCSCT5PoRi20lvbsjp+QZasPRjG3aavJ8ylaQwXW4hNrZDtPuudIRorFp7oXOevBdzOW1UXxKStWL7f28kAF6UQNNqTUmHy6k62IqKC9mPtSfckeer9SUcsw08TVe5WhC+2UuCR+VNV6mr5nXlXrTbu+xC/ZiuCSAOgaq9NeJrSlDCRVGntSlJPpvnyKDjtXY6u7zxVV8um0jRAA22H1Hi6b6UcTWTXHps6p6HdYZljMZHDzqdbRjFzqyldyS8Tip+mvQhpn8HgevnG1XEdp3W1R4IA6QiQAAAADxr0lOMoSV1JWaOW5zgXh606fC94+B1gqWu8FeEKyW2Ls/AqrWp/Ek6azh9tZa2TUeHO0HlFhz1f28pAAMqasEMkMAv2hsT0sO6be2nO3ultXxuWYoOgq/Rrzp32Tp398Wmvg5F+NjZ0elTw7sPTLoY20pehURb8fXPreAATiCCga5qXxMI8IU4rzbf2L+c01k742ryVNf2Rf1Kq2YtGnW9ru+xbWNDpVD3J+6RpwQgZU1QDAYBetB4bo0p1Pzyt5FqNJpGn0cLDntN2bWig0aeBbl8mJrY9Ooje99MAQyTDzXEdVQq1Py05S+BKIp+cvTdqd4zG/h4v9lh+zZPY5bbs5qZma4h1a9ao9rnVnLzbMMAAAAs3o9yB5hj6NCzcFJTqO10orvP1vh6MacYwirRilFJcjlfoK04sJhJ46taEq/quVlaCS4+ZuNV+lnA4G8IS/E1V7NP1V4yAL/KSSu2klvbdkU3U3pMwGAfRlVVapezhSalbxZwrVfpOx2YNx6boU3+7pSa82Umc23dttve27sA/auW42OIpU60HeNSKlH3mWUH0LZi6+VUr76cnTv4WL8ADAzrDdbQqQ74uxnnlXV4y8GfMcKihcL1n1DE4YlEtWJyAH3iI2lJd0mfBgrrsDfX34gMEgG30nV6GLo/qcov3pr7HTDlOQu2Kof1qS85JHVjT2LE3JiW/sjM23AlNhe1d38gAFwUoOa6x/wCNq81Tf9kfsdKOe66pWxKf56cH5XX0RU2zDfTp7Gu67lvYsV1Q1tT90yuoBAyxqQAGAdO01O+FpcopG2K/oypfDJX3NosBt6WLSkwPcjDVUOjPjT2sGs1LG+ExK/5M/kbM8q9JTjKL2qUXF+8kHgfibEK05rulL5nkb7W2VSwmPxNFq1qkpR8G20aEAHpRklJNrpJNNrv5HmACz55rjGYuEaLqOlRhFRhSpNxjZd/eVgAAAH3CDk0ltbdkgD9J+gGDWVu/GtJr4HTSs+jvKfweXYai1aXQUpeLLMAD4qvY/Bn2eGLmowm27WixkLrzlGNd6lR98meJM3dt97ZBgW73eb+FXK4AEnDpm5JtxWH/AK1P4TTOrHMNLU+li6PKTl/4ps6eaaxF/pie/sjNW5FfNgW7uwAC5KQFM9IFK3U1OFpwb8mvr5FzNHq/DdZhJu13TaqL3bH8GyJXS9OniS4+jv7EygmaFRDvw9Vd3OcMghEmMizNmnerwADh0tugsUlKpSfHtIu5yfKMZ1FaFTgnZ7bbGdUpVFKKktqaujU2POUcjQ1w+xlbYkuCfp6ovfWegALYqTj3p00XLEU1j6EOlOkrVlFbXHv9x+fT9wVIKScWk01Zpq6a7jg3pN9Esqbni8DHpQbvOgrXjxbiAcYB616MqcnCcXGS3xkrNHkAACUgCDo/oc0ZLH4qOIqQf4ei7ttbJS4JGLoH0a4nM6kZVIyoYdWcqklZyXdFH6UyHJqOBoQw1CChCCS5t/mfMA2EY2VlsS2I+gAAaPVuK6vDSXGfZRvDn+t8wVSqqS3U9+3iQrQneFTxPW8FzJ1nSPFqIVqWL5FbQAMabIBghgFm0JQbxEpcI0m/fJpL4X8i/lW0HhlGjOpb152XhH/LZaTYWZL0KaHfe/V4dLjH2pN8Spi3XL0WPW8AAnleDyq01OMovapJxa5PYz1AByHMMI6NWpSfsza8X3+9WZ4lu15ltnDExWx9ip4+y/K69yKijF1snwZzg9OGrphxRtqOcp0lR7c+Ovr0aAAIhKDRd9FZt04/h5vtR9Vviu4pB6YevKnJTi7NO6ZKo6l081RrLXw/siLWUyqJTgeeridgBp9P5xHFU96U1slG+3xNwbKXMhmQqOF3pmMmS4pcTgjVzQIaJB9nwVfUeg8DmF3WopSftw7Mih430D4eTbp4mpBcE0n9DsgAOKUPQJTT7eLm+SivsW/T3opy/BuM+rdaa9qptXkXwAHnSpKCUYpRS2JJWR6AAAAxcdi4UYOpNpJLi9/I42kr2dSbdyMXP8yWGoyl7TVoLmcxq1HOTlJ3cm22Z+d5rLFVHJ+qtkI9yNeZG0az/ImeX8Vl8/2o11nUf+PLx/J5/H9rIABXliAottJK7bSS729yDLBozLutxHWtdmj2lzl7K+vuPankudMUC1njUTlJluN6i85bhFRo06S9iKT8d7fncywDcQwqFXLIw0UTibbzYAB04AAAYuPwka9KdKW6at4PemvB7TluPw0qNSVKatKDs+a4W5WOuFZ1fkvXw66C/aU1uXGK228UVdp0njQacOa9vrNcy0sus8GPQiyfR/eT5FBAQMoawEkAA98JiZ0ZqcJOLXdx5Mv2RaihXSjNqFTdZ7n4HOyE7bVsfBreTaStmU7wxWtf2RCrKGXUrzYPU/7M7GmSc7ynVVWjaM/2kefrFqwGo6Fay6XQfdLYaSntCROydz2MzVRZ0+Tmr1tWJugedOtGSupJrvTPQnEEAHy5JcUAfQNdi85oUleVReC2srOZ6xk7xoxt+p7/AHEWfWyZP5xcliyVIop878IebwRZ8zzWnho3nJX4RW9nPc5zeeKleTtFPsw4GBXryqScpycm+Ldz5M5W2jHUeVYQ7NvE0lFZsun8zxi27OAIAK0sgAQ2AfdKDlJRSu20klxb3I6hkmXLDUY0979ab75Pf9vcV7ReSbsVUX9GL+M/sXM01k0fhw+LFm8uH37GZtes8SLwoHgs+P178AAC5KUAAAAAAAAAo2rMg6HSxFJdlu9WCW5/mXL5FVOwSjdWe1PY0ykam004XrUE3HfOmldrnHvj8jPWnZrTc2UsNa7ruuaNFZlpKJKVNeOp7dz7PXk8c6qCQUJfEAAAkiwAB70sXUh6s5Ll0mZtPUOJiklVdl3pGrJPSGdMg/GJrmecUmXF+UKfFI2z1Liv4r+BhVcxrTv0qknfftsYpJ2KfNiwcTfNnIZEqHFQpckG78wQDyPUAAAAkAA3ul8heIl1k01Si9v62vZXLvZOndOSxDVSd40k9+5z5R5czoFGjGEVCKUYxVopbki5s6znMamzV5dS2/XvwzprStJSk5Up+bW9n37cT6hBJJJWSVkluS7j7ANMZgAAAAAAAAAAAAAAAq2f6WjWvUopQqb3HdCX2ZR8RQnTk4Ti4SW+MlZ/5OwmFmGX0sRHo1IKXdLdKPNPgVVZZcE3zQYRdH8f2BbUdqxyfLMxXVfP9icpILPm2kKkLyovrI/ldus+zK1Vg4NxlFxkt6kmn5GcnUs2S7o1d/ajRyamVOV8uJP+1rM+QLg8D3ABIBAAAAAuACSFtdltfBLa/I3+VaUrVrSmuph+r1n4R+57SpEya7oE2eM2fLlQ6UbSNDCLk0optvYkldvwRbtO6T3VcSv5aP1m/oWHKslo4ZdiN5PfOVnL/C8DaGgo7Jhl+abi9mr79uJnqy1oo74ZOC26/r34HxCCSSSSS2JJWSPsAuSmAAAAAAAAAAAAAAAAAAAAABjYvB06ytUhGa/Ur+Rkg40mrmdTad6KtjdGUZX6uU6XK/Tj8dpqMRoyvHbGVOouTcZeTVvidABCmWbTx/rdww6ZdCdKtKpl/tfxx659TmFXTuJX7qb/AJWpGO8mxK/09b3Upv5I6uCI7Ek6oounwTIbcm/tAn6/LOULJ8S/9PW/9VRfQ9qensVL9zNfzdn5nUQcViStcUXT4EVuTf1gXX6OdUtI4mTSajDvcpX+RuMLouCs6lSUnxUF0Y/ctoJUuzKaD9b+P1cRJlqVMf7XcPu8wMFldGh/u6cY87Xl5vaZ4BPhhUKuhVyIMUTid8TvYAB0+QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/2Q==" alt="тикетон"></i>TiketON</a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <!-- Collection of nav links, forms, and other content for toggling -->
    <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">

        <div class="navbar-nav ml-auto">
            <a href="index.jsp" class="nav-item nav-link active"></i><span>Main</span></a>
            <a href="films.jsp" class="nav-item nav-link active"></i><span>Films</span></a>
            <a href="about.jsp" class="nav-item nav-link active"></i><span>About</span></a>
            <div class="nav-item dropdown" style="padding-top: 5px">
                <jsp:useBean id="user" scope="session" class="entity.Account"></jsp:useBean>
                <%! String username;%>
                <%
                    username = user.getUsername();
                    if (user.getUsername() == null) {
                        username = "Guest";
                    }
                %>
                <a href="#" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle user-action"><%=username%><b class="caret"></b></a>
                <div class="dropdown-menu">
                    <%
                    if (user.getUsername() != null) {%>
                    <a href="profile.jsp" class="dropdown-item"><i class="fa fa-user-o"></i> Profile</a>
                    <a href="tickets.jsp" class="dropdown-item"><i class="fa fa-calendar-o"></i> Tickets</a>
                    <div class="divider dropdown-divider"></div>

                    <a href="logout" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Logout</a>

                    <%
                    } else {
                    %>
                    <a href="login.jsp" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Login</a>
                    <a href="register.jsp" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Register</a>
                    <%}
                    %>
                    </div>
            </div>
        </div>
    </div>
</nav>
</body>
</html>
