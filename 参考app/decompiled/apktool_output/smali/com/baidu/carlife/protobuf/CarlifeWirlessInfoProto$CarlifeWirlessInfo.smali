.class public final Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeWirlessInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

.field public static volatile PARSER:Le/c/b/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIFIFREQUENCY_FIELD_NUMBER:I = 0x2

.field public static final WIRLESSTYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field public bitField0_:I

.field public memoizedIsInitialized:B

.field public wifiFrequency_:I

.field public wirlessType_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->memoizedIsInitialized:B

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->setWirlessType(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->clearWirlessType()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->setWifiFrequency(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->clearWifiFrequency()V

    return-void
.end method

.method private clearWifiFrequency()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wifiFrequency_:I

    return-void
.end method

.method private clearWirlessType()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wirlessType_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private setWifiFrequency(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wifiFrequency_:I

    return-void
.end method

.method private setWirlessType(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wirlessType_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->PARSER:Le/c/b/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->PARSER:Le/c/b/z;

    return-object p1

    :pswitch_1
    check-cast p2, Le/c/b/h;

    check-cast p3, Le/c/b/m;

    :cond_2
    :goto_1
    if-nez v0, :cond_6

    :try_start_1
    invoke-virtual {p2}, Le/c/b/h;->u()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0x8

    if-eq p1, p3, :cond_4

    const/16 p3, 0x10

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    .line 1
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 2
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wifiFrequency_:I

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
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    .line 3
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 4
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wirlessType_:I
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v0, 0x1

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

    :cond_6
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->hasWirlessType()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wirlessType_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->hasWirlessType()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wirlessType_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wirlessType_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->hasWifiFrequency()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wifiFrequency_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->hasWifiFrequency()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wifiFrequency_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wifiFrequency_:I

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_7

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    :cond_7
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$1;)V

    return-object p1

    :pswitch_5
    return-object v2

    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->memoizedIsInitialized:B

    if-ne p1, v1, :cond_8

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p1

    :cond_8
    if-nez p1, :cond_9

    return-object v2

    :cond_9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->hasWirlessType()Z

    move-result p2

    if-nez p2, :cond_b

    if-eqz p1, :cond_a

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->memoizedIsInitialized:B

    :cond_a
    return-object v2

    :cond_b
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->hasWifiFrequency()Z

    move-result p2

    if-nez p2, :cond_d

    if-eqz p1, :cond_c

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->memoizedIsInitialized:B

    :cond_c
    return-object v2

    :cond_d
    if-eqz p1, :cond_e

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->memoizedIsInitialized:B

    :cond_e
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;-><init>()V

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
    .locals 3

    iget v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wirlessType_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wifiFrequency_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v1}, Le/c/b/d0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/p;->memoizedSerializedSize:I

    return v1
.end method

.method public getWifiFrequency()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wifiFrequency_:I

    return v0
.end method

.method public getWirlessType()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wirlessType_:I

    return v0
.end method

.method public hasWifiFrequency()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

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

.method public hasWirlessType()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

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
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wirlessType_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->wifiFrequency_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_1
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
