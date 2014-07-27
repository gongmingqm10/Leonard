package com.xg.arctic.model;

/**
 * Created by minggong on 7/26/14.
 */
public class Video {
    private long id;
    private int scan;
    private long filesize;
    private String filename;
    private String source;
    private String image;

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getScan() {
        return scan;
    }

    public void setScan(int scan) {
        this.scan = scan;
    }

    public long getFilesize() {
        return filesize;
    }

    public void setFilesize(long filesize) {
        this.filesize = filesize;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }
}
