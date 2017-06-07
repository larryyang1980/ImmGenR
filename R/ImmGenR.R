####### ---------------------------- #######
#######       READ GCT FILE          #######
####### ---------------------------- #######
read.gct <- function(datafile="") {
    if(datafile=="") {
        datafile = choose.files(multi=F, filter=c("GCT file","*.gct"))
        if(length(datafile)==0)
            return()
    }
    x = read.table(datafile, as.is=T, skip=2, header=T, sep="\t", quote="\"", check.names=F, fill=TRUE, comment.char="")
    rownames(x) = as.character(x[,1])
    return(x)
}