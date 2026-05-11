.class public final Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscopeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeGyroscope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;",
        "Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscopeOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

.field public static final GYROTYPE_FIELD_NUMBER:I = 0x1

.field public static final GYROX_FIELD_NUMBER:I = 0x2

.field public static final GYROY_FIELD_NUMBER:I = 0x3

.field public static final GYROZ_FIELD_NUMBER:I = 0x4

.field public static volatile PARSER:Le/c/b/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x5


# instance fields
.field public bitField0_:I

.field public gyroType_:I

.field public gyroX_:D

.field public gyroZ_:D

.field public gyroy_:D

.field public memoizedIsInitialized:B

.field public timeStamp_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->setGyroType(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->clearTimeStamp()V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->clearGyroType()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->setGyroX(D)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->clearGyroX()V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->setGyroy(D)V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->clearGyroy()V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->setGyroZ(D)V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->clearGyroZ()V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->setTimeStamp(J)V

    return-void
.end method

.method private clearGyroType()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    return-void
.end method

.method private clearGyroX()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    return-void
.end method

.method private clearGyroZ()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    return-void
.end method

.method private clearGyroy()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    return-void
.end method

.method private clearTimeStamp()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private setGyroType(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    return-void
.end method

.method private setGyroX(D)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    return-void
.end method

.method private setGyroZ(D)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    return-void
.end method

.method private setGyroy(D)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    return-void
.end method

.method private setTimeStamp(J)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->PARSER:Le/c/b/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->PARSER:Le/c/b/z;

    return-object p1

    :pswitch_1
    check-cast p2, Le/c/b/h;

    check-cast p3, Le/c/b/m;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    :try_start_1
    invoke-virtual {p2}, Le/c/b/h;->u()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 p3, 0x8

    if-eq p1, p3, :cond_7

    const/16 v2, 0x11

    if-eq p1, v2, :cond_6

    const/16 v2, 0x19

    if-eq p1, v2, :cond_5

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 p3, 0x28

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 1
    invoke-virtual {p2}, Le/c/b/h;->p()J

    move-result-wide v2

    .line 2
    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

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
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    invoke-virtual {p2}, Le/c/b/h;->h()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    invoke-virtual {p2}, Le/c/b/h;->h()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    goto :goto_1

    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    invoke-virtual {p2}, Le/c/b/h;->h()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 3
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 4
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
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

    :cond_9
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroType()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroType()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroX()Z

    move-result v1

    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroX()Z

    move-result v4

    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Le/c/b/p$k;->j(ZDZD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroy()Z

    move-result v1

    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroy()Z

    move-result v4

    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Le/c/b/p$k;->j(ZDZD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroZ()Z

    move-result v1

    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroZ()Z

    move-result v4

    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Le/c/b/p$k;->j(ZDZD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasTimeStamp()Z

    move-result v1

    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasTimeStamp()Z

    move-result v4

    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Le/c/b/p$k;->i(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_a

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    :cond_a
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;

    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$1;)V

    return-object p1

    :pswitch_5
    return-object v2

    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    if-ne p1, v0, :cond_b

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p1

    :cond_b
    if-nez p1, :cond_c

    return-object v2

    :cond_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroType()Z

    move-result p2

    if-nez p2, :cond_e

    if-eqz p1, :cond_d

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    :cond_d
    return-object v2

    :cond_e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroX()Z

    move-result p2

    if-nez p2, :cond_10

    if-eqz p1, :cond_f

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    :cond_f
    return-object v2

    :cond_10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroy()Z

    move-result p2

    if-nez p2, :cond_12

    if-eqz p1, :cond_11

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    :cond_11
    return-object v2

    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroZ()Z

    move-result p2

    if-nez p2, :cond_14

    if-eqz p1, :cond_13

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    :cond_13
    return-object v2

    :cond_14
    if-eqz p1, :cond_15

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    :cond_15
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;-><init>()V

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

.method public getGyroType()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    return v0
.end method

.method public getGyroX()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    return-wide v0
.end method

.method public getGyroZ()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    return-wide v0
.end method

.method public getGyroy()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-wide v3, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    invoke-static {v2, v3, v4}, Le/c/b/i;->d(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-wide v3, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    const/4 v1, 0x3

    invoke-static {v1, v3, v4}, Le/c/b/i;->d(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget-wide v3, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    invoke-static {v2, v3, v4}, Le/c/b/i;->d(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-wide v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    const/4 v3, 0x5

    invoke-static {v3, v1, v2}, Le/c/b/i;->o(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v1}, Le/c/b/d0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/p;->memoizedSerializedSize:I

    return v1
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    return-wide v0
.end method

.method public hasGyroType()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasGyroX()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

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

.method public hasGyroZ()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

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

.method public hasGyroy()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

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

.method public hasTimeStamp()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

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
    .locals 4

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    invoke-virtual {p1, v1, v2, v3}, Le/c/b/i;->w(ID)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2, v3}, Le/c/b/i;->w(ID)V

    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    invoke-virtual {p1, v1, v2, v3}, Le/c/b/i;->w(ID)V

    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Le/c/b/i;->G(IJ)V

    :cond_4
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
