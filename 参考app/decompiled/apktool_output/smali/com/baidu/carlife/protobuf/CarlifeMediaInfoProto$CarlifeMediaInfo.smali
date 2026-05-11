.class public final Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeMediaInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALBUMART_FIELD_NUMBER:I = 0x5

.field public static final ALBUM_FIELD_NUMBER:I = 0x4

.field public static final ARTIST_FIELD_NUMBER:I = 0x3

.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

.field public static final DURATION_FIELD_NUMBER:I = 0x6

.field public static final MODE_FIELD_NUMBER:I = 0x9

.field public static volatile PARSER:Le/c/b/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYLISTNUM_FIELD_NUMBER:I = 0x7

.field public static final SONGID_FIELD_NUMBER:I = 0x8

.field public static final SONG_FIELD_NUMBER:I = 0x2

.field public static final SOURCE_FIELD_NUMBER:I = 0x1


# instance fields
.field public albumArt_:Le/c/b/g;

.field public album_:Ljava/lang/String;

.field public artist_:Ljava/lang/String;

.field public bitField0_:I

.field public duration_:I

.field public memoizedIsInitialized:B

.field public mode_:I

.field public playlistNum_:I

.field public songId_:Ljava/lang/String;

.field public song_:Ljava/lang/String;

.field public source_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    sget-object v1, Le/c/b/g;->f:Le/c/b/g;

    iput-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Le/c/b/g;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSource(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setAlbum(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearAlbum()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setAlbumBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setAlbumArt(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearAlbumArt()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setDuration(I)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearDuration()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setPlaylistNum(I)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearPlaylistNum()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSongId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearSource()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearSongId()V

    return-void
.end method

.method public static synthetic access$2100(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSongIdBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setMode(I)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearMode()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSourceBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSong(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearSong()V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSongBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setArtist(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearArtist()V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setArtistBytes(Le/c/b/g;)V

    return-void
.end method

.method private clearAlbum()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    return-void
.end method

.method private clearAlbumArt()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbumArt()Le/c/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Le/c/b/g;

    return-void
.end method

.method private clearArtist()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    return-void
.end method

.method private clearDuration()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    return-void
.end method

.method private clearMode()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    return-void
.end method

.method private clearPlaylistNum()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    return-void
.end method

.method private clearSong()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    return-void
.end method

.method private clearSongId()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    return-void
.end method

.method private clearSource()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private setAlbum(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    return-void
.end method

.method private setAlbumArt(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Le/c/b/g;

    return-void
.end method

.method private setAlbumBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    return-void
.end method

.method private setArtist(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    return-void
.end method

.method private setArtistBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    return-void
.end method

.method private setDuration(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    return-void
.end method

.method private setMode(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    return-void
.end method

.method private setPlaylistNum(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    return-void
.end method

.method private setSong(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    return-void
.end method

.method private setSongBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    return-void
.end method

.method private setSongId(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    return-void
.end method

.method private setSongIdBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    return-void
.end method

.method private setSource(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    return-void
.end method

.method private setSourceBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->PARSER:Le/c/b/z;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->PARSER:Le/c/b/z;

    return-object p1

    :pswitch_1
    check-cast p2, Le/c/b/h;

    check-cast p3, Le/c/b/m;

    :cond_2
    :goto_1
    if-nez v1, :cond_d

    :try_start_1
    invoke-virtual {p2}, Le/c/b/h;->u()I

    move-result p1

    if-eqz p1, :cond_c

    const/16 p3, 0xa

    if-eq p1, p3, :cond_b

    const/16 p3, 0x12

    if-eq p1, p3, :cond_a

    const/16 p3, 0x1a

    if-eq p1, p3, :cond_9

    const/16 p3, 0x22

    if-eq p1, p3, :cond_8

    const/16 p3, 0x2a

    if-eq p1, p3, :cond_7

    const/16 p3, 0x30

    if-eq p1, p3, :cond_6

    const/16 p3, 0x38

    if-eq p1, p3, :cond_5

    const/16 p3, 0x42

    if-eq p1, p3, :cond_4

    const/16 p3, 0x48

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_3
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 1
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 2
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 3
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 4
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    goto :goto_1

    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 6
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    invoke-virtual {p2}, Le/c/b/h;->g()Le/c/b/g;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Le/c/b/g;

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/2addr p3, v0

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_1

    :goto_3
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Le/c/b/s;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    throw p1

    :cond_d
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSource()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSource()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSong()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSong()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasArtist()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasArtist()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbum()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbum()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbumArt()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Le/c/b/g;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbumArt()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Le/c/b/g;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->g(ZLe/c/b/g;ZLe/c/b/g;)Le/c/b/g;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Le/c/b/g;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasDuration()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasDuration()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasPlaylistNum()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasPlaylistNum()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSongId()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSongId()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasMode()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasMode()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_e

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    :cond_e
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;

    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$1;)V

    return-object p1

    :pswitch_5
    return-object v2

    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    if-ne p1, v0, :cond_f

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p1

    :cond_f
    if-nez p1, :cond_10

    return-object v2

    :cond_10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSource()Z

    move-result p2

    if-nez p2, :cond_12

    if-eqz p1, :cond_11

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    :cond_11
    return-object v2

    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSong()Z

    move-result p2

    if-nez p2, :cond_14

    if-eqz p1, :cond_13

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    :cond_13
    return-object v2

    :cond_14
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasArtist()Z

    move-result p2

    if-nez p2, :cond_16

    if-eqz p1, :cond_15

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    :cond_15
    return-object v2

    :cond_16
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbum()Z

    move-result p2

    if-nez p2, :cond_18

    if-eqz p1, :cond_17

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    :cond_17
    return-object v2

    :cond_18
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbumArt()Z

    move-result p2

    if-nez p2, :cond_1a

    if-eqz p1, :cond_19

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    :cond_19
    return-object v2

    :cond_1a
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasDuration()Z

    move-result p2

    if-nez p2, :cond_1c

    if-eqz p1, :cond_1b

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    :cond_1b
    return-object v2

    :cond_1c
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasPlaylistNum()Z

    move-result p2

    if-nez p2, :cond_1e

    if-eqz p1, :cond_1d

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    :cond_1d
    return-object v2

    :cond_1e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSongId()Z

    move-result p2

    if-nez p2, :cond_20

    if-eqz p1, :cond_1f

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    :cond_1f
    return-object v2

    :cond_20
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasMode()Z

    move-result p2

    if-nez p2, :cond_22

    if-eqz p1, :cond_21

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    :cond_21
    return-object v2

    :cond_22
    if-eqz p1, :cond_23

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    :cond_23
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArt()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Le/c/b/g;

    return-object v0
.end method

.method public getAlbumBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    return v0
.end method

.method public getPlaylistNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Le/c/b/g;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Le/c/b/i;->c(ILe/c/b/g;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    const/4 v2, 0x7

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    const/16 v2, 0x9

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v1}, Le/c/b/d0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/p;->memoizedSerializedSize:I

    return v1
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    return-object v0
.end method

.method public getSongBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSongIdBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAlbumArt()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasArtist()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDuration()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMode()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPlaylistNum()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSong()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSongId()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSource()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeTo(Le/c/b/i;)V
    .locals 3

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Le/c/b/g;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->v(ILe/c/b/g;)V

    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_5
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_6
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_8
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
