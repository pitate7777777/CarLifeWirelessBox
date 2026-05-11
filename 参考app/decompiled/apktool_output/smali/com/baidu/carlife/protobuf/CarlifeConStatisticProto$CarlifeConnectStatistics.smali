.class public final Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatisticsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeConnectStatistics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;",
        "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatisticsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONFAILED_FIELD_NUMBER:I = 0x3

.field public static final CONSUCCESS_FIELD_NUMBER:I = 0x2

.field public static final CONTIME_FIELD_NUMBER:I = 0x4

.field public static final CONTOTAL_FIELD_NUMBER:I = 0x1

.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

.field public static final NERRORCOUNT_FIELD_NUMBER:I = 0x5

.field public static final NERROR_TYPE_FIELD_NUMBER:I = 0x6

.field public static volatile PARSER:Le/c/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bitField0_:I

.field public confailed_:I

.field public consuccess_:I

.field public contime_:I

.field public contotal_:I

.field public memoizedIsInitialized:B

.field public nerrorType_:Le/c/b/r$f;

.field public nerrorcount_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    invoke-static {}, Le/c/b/p;->emptyIntList()Le/c/b/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setContotal(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearNerrorcount()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setNerrorType(II)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->addNerrorType(I)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->addAllNerrorType(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearNerrorType()V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearContotal()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setConsuccess(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearConsuccess()V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setConfailed(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearConfailed()V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setContime(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearContime()V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setNerrorcount(I)V

    return-void
.end method

.method private addAllNerrorType(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->ensureNerrorTypeIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    invoke-static {p1, v0}, Le/c/b/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addNerrorType(I)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->ensureNerrorTypeIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    check-cast v0, Le/c/b/q;

    .line 1
    iget v1, v0, Le/c/b/q;->g:I

    invoke-virtual {v0, v1, p1}, Le/c/b/q;->d(II)V

    return-void
.end method

.method private clearConfailed()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    return-void
.end method

.method private clearConsuccess()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    return-void
.end method

.method private clearContime()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    return-void
.end method

.method private clearContotal()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    return-void
.end method

.method private clearNerrorType()V
    .locals 1

    invoke-static {}, Le/c/b/p;->emptyIntList()Le/c/b/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    return-void
.end method

.method private clearNerrorcount()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    return-void
.end method

.method private ensureNerrorTypeIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    move-object v1, v0

    check-cast v1, Le/c/b/c;

    .line 1
    iget-boolean v1, v1, Le/c/b/c;->e:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Le/c/b/p;->mutableCopy(Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private setConfailed(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    return-void
.end method

.method private setConsuccess(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    return-void
.end method

.method private setContime(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    return-void
.end method

.method private setContotal(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    return-void
.end method

.method private setNerrorType(II)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->ensureNerrorTypeIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    check-cast v0, Le/c/b/q;

    .line 1
    invoke-virtual {v0}, Le/c/b/c;->a()V

    invoke-virtual {v0, p1}, Le/c/b/q;->e(I)V

    iget-object v0, v0, Le/c/b/q;->f:[I

    aget v1, v0, p1

    aput p2, v0, p1

    return-void
.end method

.method private setNerrorcount(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->PARSER:Le/c/b/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->PARSER:Le/c/b/z;

    return-object p1

    :pswitch_1
    check-cast p2, Le/c/b/h;

    check-cast p3, Le/c/b/m;

    :cond_2
    :goto_1
    if-nez v1, :cond_e

    :try_start_1
    invoke-virtual {p2}, Le/c/b/h;->u()I

    move-result p1

    if-eqz p1, :cond_d

    const/16 p3, 0x8

    if-eq p1, p3, :cond_c

    const/16 v2, 0x10

    if-eq p1, v2, :cond_b

    const/16 v3, 0x18

    if-eq p1, v3, :cond_a

    const/16 v3, 0x20

    if-eq p1, v3, :cond_9

    const/16 p3, 0x28

    if-eq p1, p3, :cond_8

    const/16 p3, 0x30

    if-eq p1, p3, :cond_6

    const/16 p3, 0x32

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    invoke-virtual {p2, p1}, Le/c/b/h;->e(I)I

    move-result p1

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    check-cast p3, Le/c/b/c;

    .line 1
    iget-boolean p3, p3, Le/c/b/c;->e:Z

    if-nez p3, :cond_4

    .line 2
    invoke-virtual {p2}, Le/c/b/h;->b()I

    move-result p3

    if-lez p3, :cond_4

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    invoke-static {p3}, Le/c/b/p;->mutableCopy(Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    :cond_4
    :goto_2
    invoke-virtual {p2}, Le/c/b/h;->b()I

    move-result p3

    if-lez p3, :cond_5

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    .line 3
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result v2

    .line 4
    check-cast p3, Le/c/b/q;

    .line 5
    iget v3, p3, Le/c/b/q;->g:I

    invoke-virtual {p3, v3, v2}, Le/c/b/q;->d(II)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    .line 6
    :cond_5
    iput p1, p2, Le/c/b/h;->j:I

    invoke-virtual {p2}, Le/c/b/h;->v()V

    goto :goto_1

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    check-cast p1, Le/c/b/c;

    .line 8
    iget-boolean p1, p1, Le/c/b/c;->e:Z

    if-nez p1, :cond_7

    .line 9
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    invoke-static {p1}, Le/c/b/p;->mutableCopy(Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    :cond_7
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    .line 10
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p3

    .line 11
    check-cast p1, Le/c/b/q;

    .line 12
    iget v2, p1, Le/c/b/q;->g:I

    invoke-virtual {p1, v2, p3}, Le/c/b/q;->d(II)V

    goto/16 :goto_1

    .line 13
    :cond_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 14
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 15
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    goto/16 :goto_1

    :cond_9
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 16
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 17
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    goto/16 :goto_1

    :cond_a
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 18
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 19
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    goto/16 :goto_1

    :cond_b
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 20
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 21
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    goto/16 :goto_1

    :cond_c
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 22
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 23
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_d
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_1

    :goto_4
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Le/c/b/s;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    throw p1

    :cond_e
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContotal()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContotal()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConsuccess()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConsuccess()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConfailed()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConfailed()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContime()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContime()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasNerrorcount()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasNerrorcount()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    invoke-interface {p2, p1, v0}, Le/c/b/p$k;->f(Le/c/b/r$f;Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_f

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    :cond_f
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;

    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$1;)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    check-cast p1, Le/c/b/c;

    .line 24
    iput-boolean v1, p1, Le/c/b/c;->e:Z

    return-object v2

    .line 25
    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    if-ne p1, v0, :cond_10

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p1

    :cond_10
    if-nez p1, :cond_11

    return-object v2

    :cond_11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContotal()Z

    move-result p2

    if-nez p2, :cond_13

    if-eqz p1, :cond_12

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    :cond_12
    return-object v2

    :cond_13
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConsuccess()Z

    move-result p2

    if-nez p2, :cond_15

    if-eqz p1, :cond_14

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    :cond_14
    return-object v2

    :cond_15
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConfailed()Z

    move-result p2

    if-nez p2, :cond_17

    if-eqz p1, :cond_16

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    :cond_16
    return-object v2

    :cond_17
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContime()Z

    move-result p2

    if-nez p2, :cond_19

    if-eqz p1, :cond_18

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    :cond_18
    return-object v2

    :cond_19
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasNerrorcount()Z

    move-result p2

    if-nez p2, :cond_1b

    if-eqz p1, :cond_1a

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    :cond_1a
    return-object v2

    :cond_1b
    if-eqz p1, :cond_1c

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    :cond_1c
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;-><init>()V

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

.method public getConfailed()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    return v0
.end method

.method public getConsuccess()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    return v0
.end method

.method public getContime()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    return v0
.end method

.method public getContotal()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    return v0
.end method

.method public getNerrorType(I)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    check-cast v0, Le/c/b/q;

    .line 1
    invoke-virtual {v0, p1}, Le/c/b/q;->e(I)V

    iget-object v0, v0, Le/c/b/q;->f:[I

    aget p1, v0, p1

    return p1
.end method

.method public getNerrorTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNerrorTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    return-object v0
.end method

.method public getNerrorcount()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    iget v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    invoke-static {v1, v0}, Le/c/b/i;->f(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    invoke-static {v4, v3}, Le/c/b/i;->f(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    const/4 v5, 0x3

    invoke-static {v5, v3}, Le/c/b/i;->f(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    invoke-static {v4, v3}, Le/c/b/i;->f(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    const/4 v4, 0x5

    invoke-static {v4, v3}, Le/c/b/i;->f(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    check-cast v4, Le/c/b/q;

    invoke-virtual {v4, v2}, Le/c/b/q;->f(I)I

    move-result v4

    invoke-static {v4}, Le/c/b/i;->g(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getNerrorTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0}, Le/c/b/d0;->b()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    return v0
.end method

.method public hasConfailed()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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

.method public hasConsuccess()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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

.method public hasContime()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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

.method public hasContotal()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNerrorcount()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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

.method public writeTo(Le/c/b/i;)V
    .locals 3

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->A(II)V

    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Le/c/b/r$f;

    check-cast v1, Le/c/b/q;

    invoke-virtual {v1, v0}, Le/c/b/q;->f(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Le/c/b/i;->A(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
