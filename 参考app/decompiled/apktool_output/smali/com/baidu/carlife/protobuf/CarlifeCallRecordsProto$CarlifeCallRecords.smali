.class public final Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecordsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeCallRecords"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;,
        Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecordsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CID_FIELD_NUMBER:I = 0x1

.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

.field public static final DURATION_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static volatile PARSER:Le/c/b/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x6


# instance fields
.field public bitField0_:I

.field public cid_:I

.field public duration_:Ljava/lang/String;

.field public memoizedIsInitialized:B

.field public name_:Ljava/lang/String;

.field public number_:Ljava/lang/String;

.field public time_:Ljava/lang/String;

.field public type_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setCid(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearDuration()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setDurationBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setTime(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearTime()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setTimeBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setType(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearType()V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearCid()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearName()V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setNameBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setNumber(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearNumber()V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setNumberBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setDuration(Ljava/lang/String;)V

    return-void
.end method

.method private clearCid()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    return-void
.end method

.method private clearDuration()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDuration()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    return-void
.end method

.method private clearName()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearNumber()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    return-void
.end method

.method private clearTime()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    return-void
.end method

.method private clearType()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private setCid(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    return-void
.end method

.method private setDuration(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    return-void
.end method

.method private setDurationBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNumber(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    return-void
.end method

.method private setNumberBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    return-void
.end method

.method private setTime(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    return-void
.end method

.method private setTimeBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    return-void
.end method

.method private setType(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->PARSER:Le/c/b/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->PARSER:Le/c/b/z;

    return-object p1

    :pswitch_1
    check-cast p2, Le/c/b/h;

    check-cast p3, Le/c/b/m;

    :cond_2
    :goto_1
    if-nez v1, :cond_b

    :try_start_1
    invoke-virtual {p2}, Le/c/b/h;->u()I

    move-result p1

    if-eqz p1, :cond_a

    const/16 p3, 0x8

    if-eq p1, p3, :cond_9

    const/16 v2, 0x12

    if-eq p1, v2, :cond_8

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_7

    const/16 v2, 0x22

    if-eq p1, v2, :cond_6

    const/16 p3, 0x2a

    if-eq p1, p3, :cond_5

    const/16 p3, 0x30

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 1
    :cond_3
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 2
    invoke-static {p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->forNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    move-result-object p3

    if-nez p3, :cond_4

    const/4 p3, 0x6

    invoke-super {p0, p3, p1}, Le/c/b/p;->mergeVarintField(II)V

    goto :goto_1

    :cond_4
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/2addr p3, v2

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 3
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 4
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_a
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

    :cond_b
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasCid()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasCid()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasName()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasName()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasNumber()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasNumber()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasDuration()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasDuration()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasTime()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasTime()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasType()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasType()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_c

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    :cond_c
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;

    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$1;)V

    return-object p1

    :pswitch_5
    return-object v2

    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    if-ne p1, v0, :cond_d

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p1

    :cond_d
    if-nez p1, :cond_e

    return-object v2

    :cond_e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasCid()Z

    move-result p2

    if-nez p2, :cond_10

    if-eqz p1, :cond_f

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    :cond_f
    return-object v2

    :cond_10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasName()Z

    move-result p2

    if-nez p2, :cond_12

    if-eqz p1, :cond_11

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    :cond_11
    return-object v2

    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasNumber()Z

    move-result p2

    if-nez p2, :cond_14

    if-eqz p1, :cond_13

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    :cond_13
    return-object v2

    :cond_14
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasDuration()Z

    move-result p2

    if-nez p2, :cond_16

    if-eqz p1, :cond_15

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    :cond_15
    return-object v2

    :cond_16
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasTime()Z

    move-result p2

    if-nez p2, :cond_18

    if-eqz p1, :cond_17

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    :cond_17
    return-object v2

    :cond_18
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasType()Z

    move-result p2

    if-nez p2, :cond_1a

    if-eqz p1, :cond_19

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    :cond_19
    return-object v2

    :cond_1a
    if-eqz p1, :cond_1b

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    :cond_1b
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;-><init>()V

    return-object p1

    nop

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

.method public getCid()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getTime()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    const/4 v2, 0x6

    .line 1
    invoke-static {v2}, Le/c/b/i;->l(I)I

    move-result v2

    .line 2
    invoke-static {v1}, Le/c/b/i;->g(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 3
    :cond_6
    iget-object v1, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v1}, Le/c/b/d0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/p;->memoizedSerializedSize:I

    return v1
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->forNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->DEFAULT_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    :cond_0
    return-object v0
.end method

.method public hasCid()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDuration()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

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

.method public hasNumber()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

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

.method public hasTime()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

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

.method public writeTo(Le/c/b/i;)V
    .locals 3

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDuration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getTime()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    const/4 v1, 0x6

    .line 1
    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    .line 2
    :cond_5
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
