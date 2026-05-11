.class public final Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeVehicleDataList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataListOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

.field public static volatile PARSER:Le/c/b/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORT_FIELD_NUMBER:I = 0x1

.field public static final TOKEN_STRING_FIELD_NUMBER:I = 0x2

.field public static final VEHICLEDATA_FIELD_NUMBER:I = 0x3


# instance fields
.field public bitField0_:I

.field public memoizedIsInitialized:B

.field public support_:Z

.field public tokenString_:Ljava/lang/String;

.field public vehicleData_:Le/c/b/r$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/r$h<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    invoke-static {}, Le/c/b/p;->emptyProtobufList()Le/c/b/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->setSupport(Z)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->addVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->addAllVehicleData(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->clearVehicleData()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->removeVehicleData(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->clearSupport()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->setTokenString(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->clearTokenString()V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->setTokenStringBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->setVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->setVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->addVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    return-void
.end method

.method private addAllVehicleData(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-static {p1, v0}, Le/c/b/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-virtual {p2}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-virtual {p1}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearSupport()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    return-void
.end method

.method private clearTokenString()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getTokenString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    return-void
.end method

.method private clearVehicleData()V
    .locals 1

    invoke-static {}, Le/c/b/p;->emptyProtobufList()Le/c/b/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    return-void
.end method

.method private ensureVehicleDataIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    move-object v1, v0

    check-cast v1, Le/c/b/c;

    .line 1
    iget-boolean v1, v1, Le/c/b/c;->e:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Le/c/b/p;->mutableCopy(Le/c/b/r$h;)Le/c/b/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private removeVehicleData(I)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setSupport(Z)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    return-void
.end method

.method private setTokenString(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    return-void
.end method

.method private setTokenStringBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    return-void
.end method

.method private setVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-virtual {p2}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->PARSER:Le/c/b/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->PARSER:Le/c/b/z;

    return-object p1

    :pswitch_1
    check-cast p2, Le/c/b/h;

    check-cast p3, Le/c/b/m;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    :try_start_1
    invoke-virtual {p2}, Le/c/b/h;->u()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x12

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_3

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    check-cast p1, Le/c/b/c;

    .line 1
    iget-boolean p1, p1, Le/c/b/c;->e:Z

    if-nez p1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-static {p1}, Le/c/b/p;->mutableCopy(Le/c/b/r$h;)Le/c/b/r$h;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    :cond_4
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->parser()Le/c/b/z;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Le/c/b/h;->j(Le/c/b/z;Le/c/b/m;)Le/c/b/x;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    invoke-virtual {p2}, Le/c/b/h;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
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

    :cond_8
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasSupport()Z

    move-result p1

    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasSupport()Z

    move-result v1

    iget-boolean v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->e(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasTokenString()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasTokenString()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {p2, p1, v0}, Le/c/b/p$k;->b(Le/c/b/r$h;Le/c/b/r$h;)Le/c/b/r$h;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_9

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    :cond_9
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    invoke-direct {p1, v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$1;)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    check-cast p1, Le/c/b/c;

    .line 3
    iput-boolean v1, p1, Le/c/b/c;->e:Z

    return-object v0

    .line 4
    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->memoizedIsInitialized:B

    if-ne p1, v2, :cond_a

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p1

    :cond_a
    if-nez p1, :cond_b

    return-object v0

    :cond_b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasSupport()Z

    move-result p2

    if-nez p2, :cond_d

    if-eqz p1, :cond_c

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->memoizedIsInitialized:B

    :cond_c
    return-object v0

    :cond_d
    const/4 p2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getVehicleDataCount()I

    move-result p3

    if-ge p2, p3, :cond_10

    invoke-virtual {p0, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getVehicleData(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    move-result-object p3

    invoke-virtual {p3}, Le/c/b/p;->isInitialized()Z

    move-result p3

    if-nez p3, :cond_f

    if-eqz p1, :cond_e

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->memoizedIsInitialized:B

    :cond_e
    return-object v0

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_10
    if-eqz p1, :cond_11

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->memoizedIsInitialized:B

    :cond_11
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;-><init>()V

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

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    invoke-static {v1, v0}, Le/c/b/i;->b(IZ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getTokenString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/c/b/x;

    const/4 v3, 0x3

    invoke-static {v3, v1}, Le/c/b/i;->i(ILe/c/b/x;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v1}, Le/c/b/d0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/p;->memoizedSerializedSize:I

    return v1
.end method

.method public getSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    return v0
.end method

.method public getTokenString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenStringBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleData(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p1
.end method

.method public getVehicleDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVehicleDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    return-object v0
.end method

.method public getVehicleDataOrBuilder(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleDataOrBuilder;

    return-object p1
.end method

.method public getVehicleDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    return-object v0
.end method

.method public hasSupport()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTokenString()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

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

.method public writeTo(Le/c/b/i;)V
    .locals 3

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->u(IZ)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getTokenString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Le/c/b/r$h;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/c/b/x;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Le/c/b/i;->B(ILe/c/b/x;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
