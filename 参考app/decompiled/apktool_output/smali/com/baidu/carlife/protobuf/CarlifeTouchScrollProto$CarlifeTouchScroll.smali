.class public final Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScrollOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeTouchScroll"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScrollOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

.field public static final DISTANCEX_FIELD_NUMBER:I = 0x5

.field public static final DISTANCEY_FIELD_NUMBER:I = 0x6

.field public static volatile PARSER:Le/c/b/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;",
            ">;"
        }
    .end annotation
.end field

.field public static final X1_FIELD_NUMBER:I = 0x1

.field public static final X2_FIELD_NUMBER:I = 0x3

.field public static final Y1_FIELD_NUMBER:I = 0x2

.field public static final Y2_FIELD_NUMBER:I = 0x4


# instance fields
.field public bitField0_:I

.field public distanceX_:F

.field public distanceY_:F

.field public memoizedIsInitialized:B

.field public x1_:I

.field public x2_:I

.field public y1_:I

.field public y2_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->memoizedIsInitialized:B

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->setX1(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->clearDistanceX()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->setDistanceY(F)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->clearDistanceY()V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->clearX1()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->setY1(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->clearY1()V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->setX2(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->clearX2()V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->setY2(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->clearY2()V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->setDistanceX(F)V

    return-void
.end method

.method private clearDistanceX()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceX_:F

    return-void
.end method

.method private clearDistanceY()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceY_:F

    return-void
.end method

.method private clearX1()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x1_:I

    return-void
.end method

.method private clearX2()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x2_:I

    return-void
.end method

.method private clearY1()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y1_:I

    return-void
.end method

.method private clearY2()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y2_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;)Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private setDistanceX(F)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceX_:F

    return-void
.end method

.method private setDistanceY(F)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceY_:F

    return-void
.end method

.method private setX1(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x1_:I

    return-void
.end method

.method private setX2(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x2_:I

    return-void
.end method

.method private setY1(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y1_:I

    return-void
.end method

.method private setY2(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y2_:I

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->PARSER:Le/c/b/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->PARSER:Le/c/b/z;

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

    const/16 p3, 0x2d

    if-eq p1, p3, :cond_4

    const/16 p3, 0x35

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/2addr p1, v3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    invoke-virtual {p2}, Le/c/b/h;->i()F

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceY_:F

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    invoke-virtual {p2}, Le/c/b/h;->i()F

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceX_:F

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    .line 1
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 2
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y2_:I

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

    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    .line 3
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 4
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x2_:I

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    .line 5
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 6
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y1_:I

    goto :goto_1

    :cond_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    .line 7
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x1_:I
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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasX1()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x1_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasX1()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x1_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x1_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasY1()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y1_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasY1()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y1_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y1_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasX2()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x2_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasX2()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x2_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x2_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasY2()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y2_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasY2()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y2_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y2_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasDistanceX()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceX_:F

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasDistanceX()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceX_:F

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->h(ZFZF)F

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceX_:F

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasDistanceY()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceY_:F

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasDistanceY()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceY_:F

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->h(ZFZF)F

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceY_:F

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_b

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    :cond_b
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll$Builder;

    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$1;)V

    return-object p1

    :pswitch_5
    return-object v2

    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->memoizedIsInitialized:B

    if-ne p1, v0, :cond_c

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p1

    :cond_c
    if-nez p1, :cond_d

    return-object v2

    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasX1()Z

    move-result p2

    if-nez p2, :cond_f

    if-eqz p1, :cond_e

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->memoizedIsInitialized:B

    :cond_e
    return-object v2

    :cond_f
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasY1()Z

    move-result p2

    if-nez p2, :cond_11

    if-eqz p1, :cond_10

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->memoizedIsInitialized:B

    :cond_10
    return-object v2

    :cond_11
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasX2()Z

    move-result p2

    if-nez p2, :cond_13

    if-eqz p1, :cond_12

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->memoizedIsInitialized:B

    :cond_12
    return-object v2

    :cond_13
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasY2()Z

    move-result p2

    if-nez p2, :cond_15

    if-eqz p1, :cond_14

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->memoizedIsInitialized:B

    :cond_14
    return-object v2

    :cond_15
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasDistanceX()Z

    move-result p2

    if-nez p2, :cond_17

    if-eqz p1, :cond_16

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->memoizedIsInitialized:B

    :cond_16
    return-object v2

    :cond_17
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->hasDistanceY()Z

    move-result p2

    if-nez p2, :cond_19

    if-eqz p1, :cond_18

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->memoizedIsInitialized:B

    :cond_18
    return-object v2

    :cond_19
    if-eqz p1, :cond_1a

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->memoizedIsInitialized:B

    :cond_1a
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;-><init>()V

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

.method public getDistanceX()F
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceX_:F

    return v0
.end method

.method public getDistanceY()F
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceY_:F

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

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x1_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y1_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x2_:I

    const/4 v3, 0x3

    invoke-static {v3, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y2_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceX_:F

    const/4 v2, 0x5

    invoke-static {v2, v1}, Le/c/b/i;->e(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceY_:F

    const/4 v2, 0x6

    invoke-static {v2, v1}, Le/c/b/i;->e(IF)I

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

.method public getX1()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x1_:I

    return v0
.end method

.method public getX2()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x2_:I

    return v0
.end method

.method public getY1()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y1_:I

    return v0
.end method

.method public getY2()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y2_:I

    return v0
.end method

.method public hasDistanceX()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

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

.method public hasDistanceY()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

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

.method public hasX1()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasX2()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

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

.method public hasY1()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

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

.method public hasY2()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

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

.method public writeTo(Le/c/b/i;)V
    .locals 3

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x1_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y1_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->x2_:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->A(II)V

    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->y2_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceX_:F

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->z(IF)V

    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchScrollProto$CarlifeTouchScroll;->distanceY_:F

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->z(IF)V

    :cond_5
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
