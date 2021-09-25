package utils;

import java.io.Serializable;
import java.util.LinkedList;

public class HistoryBean implements Serializable {
    private LinkedList<Data> history;

    public HistoryBean() {
        history = new LinkedList<>();
    }

    public LinkedList<Data> getHistory() {
        return history;
    }

    public void setHistory(LinkedList<Data> history) {
        this.history = history;
    }

    public void add(Data element) {
        history.push(element);
    }

    public Data getPrevious() {
        return history.peekFirst();
    }

}
