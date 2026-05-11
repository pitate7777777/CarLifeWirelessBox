.class public final Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeBTStartPairReq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReqOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

.field public static final OSTYPE_FIELD_NUMBER:I = 0x1

.field public static volatile PARSER:Le/c/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address_:Ljava/lang/String;

.field public bitField0_:I

.field public memoizedIsInitialized:B

.field public ostype_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->address_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->setOstype(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->clearOstype()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->clearAddress()V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->setAddressBytes(Le/c/b/g;)V

    return-void
.end method

.method private clearAddress()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->address_:Ljava/lang/String;

    return-void
.end method

.method private clearOstype()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->ostype_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private setAddress(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->address_:Ljava/lang/String;

    return-void
.end method

.method private setAddressBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->address_:Ljava/lang/String;

    return-void
.end method

.method private setOstype(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->ostype_:I

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->PARSER:Le/c/b/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->PARSER:Le/c/b/z;

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

    const/16 p3, 0x12

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->address_:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    .line 1
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 2
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->ostype_:I
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->hasOstype()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->ostype_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->hasOstype()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->ostype_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->ostype_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->hasAddress()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->address_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->hasAddress()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->address_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->address_:Ljava/lang/String;

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_7

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    :cond_7
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;

    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$1;)V

    return-object p1

    :pswitch_5
    return-object v1

    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->memoizedIsInitialized:B

    if-ne p1, v2, :cond_8

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p1

    :cond_8
    if-nez p1, :cond_9

    return-object v1

    :cond_9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->hasOstype()Z

    move-result p2

    if-nez p2, :cond_b

    if-eqz p1, :cond_a

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->memoizedIsInitialized:B

    :cond_a
    return-object v1

    :cond_b
    if-eqz p1, :cond_c

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->memoizedIsInitialized:B

    :cond_c
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;-><init>()V

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

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->address_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getOstype()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->ostype_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->ostype_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

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

.method public hasAddress()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

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

.method public hasOstype()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

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

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->ostype_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartPairReqProto$CarlifeBTStartPairReq;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
