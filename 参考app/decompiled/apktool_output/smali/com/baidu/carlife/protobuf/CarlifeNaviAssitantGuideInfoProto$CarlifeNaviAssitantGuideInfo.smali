.class public final Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeNaviAssitantGuideInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;",
        "Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final ASSISTANTTYPE_FIELD_NUMBER:I = 0x2

.field public static final CAMERASPEED_FIELD_NUMBER:I = 0x6

.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

.field public static volatile PARSER:Le/c/b/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMAINDISTANCE_FIELD_NUMBER:I = 0x5

.field public static final TOTALDISTANCE_FIELD_NUMBER:I = 0x4

.field public static final TRAFFICSIGNTYPE_FIELD_NUMBER:I = 0x3


# instance fields
.field public action_:I

.field public assistantType_:I

.field public bitField0_:I

.field public cameraSpeed_:I

.field public memoizedIsInitialized:B

.field public remainDistance_:I

.field public totalDistance_:I

.field public trafficSignType_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->memoizedIsInitialized:B

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->setAction(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->clearRemainDistance()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->setCameraSpeed(I)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->clearCameraSpeed()V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->clearAction()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->setAssistantType(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->clearAssistantType()V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->setTrafficSignType(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->clearTrafficSignType()V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->setTotalDistance(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->clearTotalDistance()V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->setRemainDistance(I)V

    return-void
.end method

.method private clearAction()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->action_:I

    return-void
.end method

.method private clearAssistantType()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->assistantType_:I

    return-void
.end method

.method private clearCameraSpeed()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->cameraSpeed_:I

    return-void
.end method

.method private clearRemainDistance()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->remainDistance_:I

    return-void
.end method

.method private clearTotalDistance()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->totalDistance_:I

    return-void
.end method

.method private clearTrafficSignType()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->trafficSignType_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private setAction(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->action_:I

    return-void
.end method

.method private setAssistantType(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->assistantType_:I

    return-void
.end method

.method private setCameraSpeed(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->cameraSpeed_:I

    return-void
.end method

.method private setRemainDistance(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->remainDistance_:I

    return-void
.end method

.method private setTotalDistance(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->totalDistance_:I

    return-void
.end method

.method private setTrafficSignType(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->trafficSignType_:I

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->PARSER:Le/c/b/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->PARSER:Le/c/b/z;

    return-object p1

    :pswitch_1
    check-cast p2, Le/c/b/h;

    check-cast p3, Le/c/b/m;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    :try_start_1
    invoke-virtual {p2}, Le/c/b/h;->u()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 p3, 0x8

    if-eq p1, p3, :cond_8

    const/16 v2, 0x10

    if-eq p1, v2, :cond_7

    const/16 v3, 0x18

    if-eq p1, v3, :cond_6

    const/16 v3, 0x20

    if-eq p1, v3, :cond_5

    const/16 p3, 0x28

    if-eq p1, p3, :cond_4

    const/16 p3, 0x30

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/2addr p1, v3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    .line 1
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 2
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->cameraSpeed_:I

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

    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    .line 3
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 4
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->remainDistance_:I

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    .line 5
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 6
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->totalDistance_:I

    goto :goto_1

    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    .line 7
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->trafficSignType_:I

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    .line 9
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 10
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->assistantType_:I

    goto :goto_1

    :cond_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    .line 11
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 12
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->action_:I
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

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

    :cond_a
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasAction()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->action_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasAction()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->action_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->action_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasAssistantType()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->assistantType_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasAssistantType()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->assistantType_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->assistantType_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasTrafficSignType()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->trafficSignType_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasTrafficSignType()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->trafficSignType_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->trafficSignType_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasTotalDistance()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->totalDistance_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasTotalDistance()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->totalDistance_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->totalDistance_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasRemainDistance()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->remainDistance_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasRemainDistance()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->remainDistance_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->remainDistance_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasCameraSpeed()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->cameraSpeed_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasCameraSpeed()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->cameraSpeed_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->cameraSpeed_:I

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_b

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    :cond_b
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;

    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$1;)V

    return-object p1

    :pswitch_5
    return-object v2

    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->memoizedIsInitialized:B

    if-ne p1, v0, :cond_c

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p1

    :cond_c
    if-nez p1, :cond_d

    return-object v2

    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasAction()Z

    move-result p2

    if-nez p2, :cond_f

    if-eqz p1, :cond_e

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->memoizedIsInitialized:B

    :cond_e
    return-object v2

    :cond_f
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasAssistantType()Z

    move-result p2

    if-nez p2, :cond_11

    if-eqz p1, :cond_10

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->memoizedIsInitialized:B

    :cond_10
    return-object v2

    :cond_11
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasTrafficSignType()Z

    move-result p2

    if-nez p2, :cond_13

    if-eqz p1, :cond_12

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->memoizedIsInitialized:B

    :cond_12
    return-object v2

    :cond_13
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasTotalDistance()Z

    move-result p2

    if-nez p2, :cond_15

    if-eqz p1, :cond_14

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->memoizedIsInitialized:B

    :cond_14
    return-object v2

    :cond_15
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasRemainDistance()Z

    move-result p2

    if-nez p2, :cond_17

    if-eqz p1, :cond_16

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->memoizedIsInitialized:B

    :cond_16
    return-object v2

    :cond_17
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->hasCameraSpeed()Z

    move-result p2

    if-nez p2, :cond_19

    if-eqz p1, :cond_18

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->memoizedIsInitialized:B

    :cond_18
    return-object v2

    :cond_19
    if-eqz p1, :cond_1a

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->memoizedIsInitialized:B

    :cond_1a
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;-><init>()V

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

.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->action_:I

    return v0
.end method

.method public getAssistantType()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->assistantType_:I

    return v0
.end method

.method public getCameraSpeed()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->cameraSpeed_:I

    return v0
.end method

.method public getRemainDistance()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->remainDistance_:I

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

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->action_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->assistantType_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->trafficSignType_:I

    const/4 v3, 0x3

    invoke-static {v3, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->totalDistance_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->remainDistance_:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->cameraSpeed_:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v1}, Le/c/b/d0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/p;->memoizedSerializedSize:I

    return v1
.end method

.method public getTotalDistance()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->totalDistance_:I

    return v0
.end method

.method public getTrafficSignType()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->trafficSignType_:I

    return v0
.end method

.method public hasAction()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasAssistantType()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

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

.method public hasCameraSpeed()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

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

.method public hasRemainDistance()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

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

.method public hasTotalDistance()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

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

.method public hasTrafficSignType()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

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

.method public writeTo(Le/c/b/i;)V
    .locals 3

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->action_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->assistantType_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->trafficSignType_:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->A(II)V

    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->totalDistance_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->remainDistance_:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviAssitantGuideInfoProto$CarlifeNaviAssitantGuideInfo;->cameraSpeed_:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_5
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
