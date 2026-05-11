.class public final Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeBTPairInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

.field public static final HASH_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x6

.field public static volatile PARSER:Le/c/b/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSKEY_FIELD_NUMBER:I = 0x2

.field public static final RANDOMIZER_FIELD_NUMBER:I = 0x4

.field public static final STATUS_FIELD_NUMBER:I = 0x7

.field public static final UUID_FIELD_NUMBER:I = 0x5


# instance fields
.field public address_:Ljava/lang/String;

.field public bitField0_:I

.field public hash_:Ljava/lang/String;

.field public memoizedIsInitialized:B

.field public name_:Ljava/lang/String;

.field public passKey_:Ljava/lang/String;

.field public randomizer_:Ljava/lang/String;

.field public status_:I

.field public uuid_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setRandomizer(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearRandomizer()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setRandomizerBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearUuid()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setUuidBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearName()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setNameBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setStatus(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearAddress()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearStatus()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setAddressBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setPassKey(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearPassKey()V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setPassKeyBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setHash(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearHash()V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setHashBytes(Le/c/b/g;)V

    return-void
.end method

.method private clearAddress()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    return-void
.end method

.method private clearHash()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    return-void
.end method

.method private clearName()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearPassKey()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getPassKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    return-void
.end method

.method private clearRandomizer()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getRandomizer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    return-void
.end method

.method private clearStatus()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    return-void
.end method

.method private clearUuid()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private setAddress(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    return-void
.end method

.method private setAddressBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    return-void
.end method

.method private setHash(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    return-void
.end method

.method private setHashBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    return-void
.end method

.method private setPassKey(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    return-void
.end method

.method private setPassKeyBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    return-void
.end method

.method private setRandomizer(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    return-void
.end method

.method private setRandomizerBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    return-void
.end method

.method private setStatus(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    return-void
.end method

.method private setUuid(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    return-void
.end method

.method private setUuidBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->PARSER:Le/c/b/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->PARSER:Le/c/b/z;

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

    const/16 p3, 0xa

    if-eq p1, p3, :cond_9

    const/16 p3, 0x12

    if-eq p1, p3, :cond_8

    const/16 p3, 0x1a

    if-eq p1, p3, :cond_7

    const/16 p3, 0x22

    if-eq p1, p3, :cond_6

    const/16 p3, 0x2a

    if-eq p1, p3, :cond_5

    const/16 p3, 0x32

    if-eq p1, p3, :cond_4

    const/16 p3, 0x38

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 1
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 2
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

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
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/2addr p3, v0

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;
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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasAddress()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasAddress()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasPassKey()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasPassKey()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasHash()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasHash()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasRandomizer()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasRandomizer()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasUuid()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasUuid()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasName()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasName()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasStatus()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasStatus()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_c

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    :cond_c
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;

    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$1;)V

    return-object p1

    :pswitch_5
    return-object v2

    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    if-ne p1, v0, :cond_d

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p1

    :cond_d
    if-nez p1, :cond_e

    return-object v2

    :cond_e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasAddress()Z

    move-result p2

    if-nez p2, :cond_10

    if-eqz p1, :cond_f

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    :cond_f
    return-object v2

    :cond_10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasUuid()Z

    move-result p2

    if-nez p2, :cond_12

    if-eqz p1, :cond_11

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    :cond_11
    return-object v2

    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasName()Z

    move-result p2

    if-nez p2, :cond_14

    if-eqz p1, :cond_13

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    :cond_13
    return-object v2

    :cond_14
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasStatus()Z

    move-result p2

    if-nez p2, :cond_16

    if-eqz p1, :cond_15

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    :cond_15
    return-object v2

    :cond_16
    if-eqz p1, :cond_17

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    :cond_17
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;-><init>()V

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

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    return-object v0
.end method

.method public getHashBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getPassKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassKeyBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getRandomizer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomizerBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

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

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getPassKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getRandomizer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    const/4 v2, 0x7

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v1}, Le/c/b/d0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/p;->memoizedSerializedSize:I

    return v1
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    return-object v0
.end method

.method public getUuidBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public hasAddress()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasHash()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

.method public hasPassKey()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

.method public hasRandomizer()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

.method public hasUuid()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getPassKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getRandomizer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_6
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
