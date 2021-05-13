package entity;

import java.util.Date;

public class Ticket {
    private Integer ticketID;
    private Film film;
    private Account account;
    private Date startDate;
    private Double price;

    public Ticket(Integer ticketID, Film film, Account account, Date startDate, Double price) {
        this.ticketID = ticketID;
        this.film = film;
        this.account = account;
        this.startDate = startDate;
        this.price = price;
    }
    public Ticket(Film film, Account account, Date startDate, Double price) {
        this(null, film, account, startDate, price);
    }
    public int getTicketID() {
        return ticketID;
    }

    public Ticket() {
    }

    public void setTicketID(int ticketID) {
        this.ticketID = ticketID;
    }

    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
}
