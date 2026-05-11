.class public final Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeVehicleControl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControlOrBuilder;"
    }
.end annotation


# static fields
.field public static final AREA_ID_FIELD_NUMBER:I = 0x5

.field public static final AREA_VALUE_FIELD_NUMBER:I = 0x6

.field public static final BYTES_VALUE_FIELD_NUMBER:I = 0x8

.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

.field public static final FLOAT_VALUES_FIELD_NUMBER:I = 0xb

.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static final INT32_VALUES_FIELD_NUMBER:I = 0x9

.field public static final INT64_VALUES_FIELD_NUMBER:I = 0xa

.field public static volatile PARSER:Le/c/b/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0xc

.field public static final SUPPORT_FIELD_NUMBER:I = 0x3

.field public static final TOKEN_STRING_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VALUE_TYPE_FIELD_NUMBER:I = 0x7


# instance fields
.field public areaId_:I

.field public areaValue_:Le/c/b/r$f;

.field public bitField0_:I

.field public bytesValue_:Le/c/b/g;

.field public floatValues_:Le/c/b/r$e;

.field public id_:I

.field public int32Values_:Le/c/b/r$f;

.field public int64Values_:Le/c/b/r$g;

.field public memoizedIsInitialized:B

.field public stringValue_:Ljava/lang/String;

.field public support_:Z

.field public tokenString_:Ljava/lang/String;

.field public type_:I

.field public valueType_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->tokenString_:Ljava/lang/String;

    invoke-static {}, Le/c/b/p;->emptyIntList()Le/c/b/r$f;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    sget-object v1, Le/c/b/g;->f:Le/c/b/g;

    iput-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bytesValue_:Le/c/b/g;

    invoke-static {}, Le/c/b/p;->emptyIntList()Le/c/b/r$f;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    invoke-static {}, Le/c/b/p;->emptyLongList()Le/c/b/r$g;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    invoke-static {}, Le/c/b/p;->emptyFloatList()Le/c/b/r$e;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setType(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setAreaId(I)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearAreaId()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setAreaValue(II)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->addAreaValue(I)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->addAllAreaValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearAreaValue()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setValueType(I)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearValueType()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setBytesValue(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearBytesValue()V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearType()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setInt32Values(II)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->addInt32Values(I)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->addAllInt32Values(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearInt32Values()V

    return-void
.end method

.method public static synthetic access$2400(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setInt64Values(IJ)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->addInt64Values(J)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->addAllInt64Values(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearInt64Values()V

    return-void
.end method

.method public static synthetic access$2800(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setFloatValues(IF)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->addFloatValues(F)V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setId(I)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->addAllFloatValues(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearFloatValues()V

    return-void
.end method

.method public static synthetic access$3200(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearStringValue()V

    return-void
.end method

.method public static synthetic access$3400(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setStringValueBytes(Le/c/b/g;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearId()V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setSupport(Z)V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearSupport()V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setTokenString(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->clearTokenString()V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;Le/c/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->setTokenStringBytes(Le/c/b/g;)V

    return-void
.end method

.method private addAllAreaValue(Ljava/lang/Iterable;)V
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

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureAreaValueIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    invoke-static {p1, v0}, Le/c/b/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllFloatValues(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureFloatValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    invoke-static {p1, v0}, Le/c/b/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllInt32Values(Ljava/lang/Iterable;)V
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

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureInt32ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    invoke-static {p1, v0}, Le/c/b/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllInt64Values(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureInt64ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    invoke-static {p1, v0}, Le/c/b/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAreaValue(I)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureAreaValueIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    check-cast v0, Le/c/b/q;

    .line 1
    iget v1, v0, Le/c/b/q;->g:I

    invoke-virtual {v0, v1, p1}, Le/c/b/q;->d(II)V

    return-void
.end method

.method private addFloatValues(F)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureFloatValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    check-cast v0, Le/c/b/o;

    .line 1
    iget v1, v0, Le/c/b/o;->g:I

    invoke-virtual {v0, v1, p1}, Le/c/b/o;->d(IF)V

    return-void
.end method

.method private addInt32Values(I)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureInt32ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    check-cast v0, Le/c/b/q;

    .line 1
    iget v1, v0, Le/c/b/q;->g:I

    invoke-virtual {v0, v1, p1}, Le/c/b/q;->d(II)V

    return-void
.end method

.method private addInt64Values(J)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureInt64ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    check-cast v0, Le/c/b/w;

    .line 1
    iget v1, v0, Le/c/b/w;->g:I

    invoke-virtual {v0, v1, p1, p2}, Le/c/b/w;->d(IJ)V

    return-void
.end method

.method private clearAreaId()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaId_:I

    return-void
.end method

.method private clearAreaValue()V
    .locals 1

    invoke-static {}, Le/c/b/p;->emptyIntList()Le/c/b/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    return-void
.end method

.method private clearBytesValue()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getBytesValue()Le/c/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bytesValue_:Le/c/b/g;

    return-void
.end method

.method private clearFloatValues()V
    .locals 1

    invoke-static {}, Le/c/b/p;->emptyFloatList()Le/c/b/r$e;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    return-void
.end method

.method private clearId()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->id_:I

    return-void
.end method

.method private clearInt32Values()V
    .locals 1

    invoke-static {}, Le/c/b/p;->emptyIntList()Le/c/b/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    return-void
.end method

.method private clearInt64Values()V
    .locals 1

    invoke-static {}, Le/c/b/p;->emptyLongList()Le/c/b/r$g;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    return-void
.end method

.method private clearStringValue()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getStringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method private clearSupport()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->support_:Z

    return-void
.end method

.method private clearTokenString()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getTokenString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->tokenString_:Ljava/lang/String;

    return-void
.end method

.method private clearType()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->type_:I

    return-void
.end method

.method private clearValueType()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->valueType_:I

    return-void
.end method

.method private ensureAreaValueIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    move-object v1, v0

    check-cast v1, Le/c/b/c;

    .line 1
    iget-boolean v1, v1, Le/c/b/c;->e:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Le/c/b/p;->mutableCopy(Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    :cond_0
    return-void
.end method

.method private ensureFloatValuesIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    move-object v1, v0

    check-cast v1, Le/c/b/c;

    .line 1
    iget-boolean v1, v1, Le/c/b/c;->e:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Le/c/b/p;->mutableCopy(Le/c/b/r$e;)Le/c/b/r$e;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    :cond_0
    return-void
.end method

.method private ensureInt32ValuesIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    move-object v1, v0

    check-cast v1, Le/c/b/c;

    .line 1
    iget-boolean v1, v1, Le/c/b/c;->e:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Le/c/b/p;->mutableCopy(Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    :cond_0
    return-void
.end method

.method private ensureInt64ValuesIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    move-object v1, v0

    check-cast v1, Le/c/b/c;

    .line 1
    iget-boolean v1, v1, Le/c/b/c;->e:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Le/c/b/p;->mutableCopy(Le/c/b/r$g;)Le/c/b/r$g;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;)Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private setAreaId(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaId_:I

    return-void
.end method

.method private setAreaValue(II)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureAreaValueIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    check-cast v0, Le/c/b/q;

    .line 1
    invoke-virtual {v0}, Le/c/b/c;->a()V

    invoke-virtual {v0, p1}, Le/c/b/q;->e(I)V

    iget-object v0, v0, Le/c/b/q;->f:[I

    aget v1, v0, p1

    aput p2, v0, p1

    return-void
.end method

.method private setBytesValue(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bytesValue_:Le/c/b/g;

    return-void
.end method

.method private setFloatValues(IF)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureFloatValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    check-cast v0, Le/c/b/o;

    .line 1
    invoke-virtual {v0}, Le/c/b/c;->a()V

    invoke-virtual {v0, p1}, Le/c/b/o;->e(I)V

    iget-object v0, v0, Le/c/b/o;->f:[F

    aget v1, v0, p1

    aput p2, v0, p1

    return-void
.end method

.method private setId(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->id_:I

    return-void
.end method

.method private setInt32Values(II)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureInt32ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    check-cast v0, Le/c/b/q;

    .line 1
    invoke-virtual {v0}, Le/c/b/c;->a()V

    invoke-virtual {v0, p1}, Le/c/b/q;->e(I)V

    iget-object v0, v0, Le/c/b/q;->f:[I

    aget v1, v0, p1

    aput p2, v0, p1

    return-void
.end method

.method private setInt64Values(IJ)V
    .locals 3

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->ensureInt64ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    check-cast v0, Le/c/b/w;

    .line 1
    invoke-virtual {v0}, Le/c/b/c;->a()V

    invoke-virtual {v0, p1}, Le/c/b/w;->e(I)V

    iget-object v0, v0, Le/c/b/w;->f:[J

    aget-wide v1, v0, p1

    aput-wide p2, v0, p1

    return-void
.end method

.method private setStringValue(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method private setStringValueBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method private setSupport(Z)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->support_:Z

    return-void
.end method

.method private setTokenString(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->tokenString_:Ljava/lang/String;

    return-void
.end method

.method private setTokenStringBytes(Le/c/b/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    invoke-virtual {p1}, Le/c/b/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->tokenString_:Ljava/lang/String;

    return-void
.end method

.method private setType(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->type_:I

    return-void
.end method

.method private setValueType(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->valueType_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->PARSER:Le/c/b/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->PARSER:Le/c/b/z;

    return-object p1

    :pswitch_1
    check-cast p2, Le/c/b/h;

    check-cast p3, Le/c/b/m;

    :cond_2
    :goto_1
    if-nez v2, :cond_d

    :try_start_1
    invoke-virtual {p2}, Le/c/b/h;->u()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    goto/16 :goto_8

    :sswitch_0
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->stringValue_:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    check-cast p1, Le/c/b/c;

    .line 1
    iget-boolean p1, p1, Le/c/b/c;->e:Z

    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    invoke-static {p1}, Le/c/b/p;->mutableCopy(Le/c/b/r$e;)Le/c/b/r$e;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    :cond_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    invoke-virtual {p2}, Le/c/b/h;->i()F

    move-result p3

    check-cast p1, Le/c/b/o;

    .line 3
    iget v1, p1, Le/c/b/o;->g:I

    invoke-virtual {p1, v1, p3}, Le/c/b/o;->d(IF)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_b

    :catch_0
    move-exception p1

    goto/16 :goto_9

    :catch_1
    move-exception p1

    goto/16 :goto_a

    .line 4
    :sswitch_2
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    invoke-virtual {p2, p1}, Le/c/b/h;->e(I)I

    move-result p3

    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    check-cast v1, Le/c/b/c;

    .line 5
    iget-boolean v1, v1, Le/c/b/c;->e:Z

    if-nez v1, :cond_4

    .line 6
    invoke-virtual {p2}, Le/c/b/h;->b()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    div-int/lit8 p1, p1, 0x4
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v1, p1

    check-cast v3, Le/c/b/o;

    :try_start_2
    invoke-virtual {v3, v1}, Le/c/b/o;->h(I)Le/c/b/r$e;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    :cond_4
    :goto_2
    invoke-virtual {p2}, Le/c/b/h;->b()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    invoke-virtual {p2}, Le/c/b/h;->i()F

    move-result v1

    check-cast p1, Le/c/b/o;

    .line 7
    iget v3, p1, Le/c/b/o;->g:I

    invoke-virtual {p1, v3, v1}, Le/c/b/o;->d(IF)V

    goto :goto_2

    .line 8
    :cond_5
    iput p3, p2, Le/c/b/h;->j:I

    :goto_3
    invoke-virtual {p2}, Le/c/b/h;->v()V

    goto/16 :goto_1

    .line 9
    :sswitch_3
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    invoke-virtual {p2, p1}, Le/c/b/h;->e(I)I

    move-result p1

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    check-cast p3, Le/c/b/c;

    .line 10
    iget-boolean p3, p3, Le/c/b/c;->e:Z

    if-nez p3, :cond_6

    .line 11
    invoke-virtual {p2}, Le/c/b/h;->b()I

    move-result p3

    if-lez p3, :cond_6

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    invoke-static {p3}, Le/c/b/p;->mutableCopy(Le/c/b/r$g;)Le/c/b/r$g;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    :cond_6
    :goto_4
    invoke-virtual {p2}, Le/c/b/h;->b()I

    move-result p3

    if-lez p3, :cond_b

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    invoke-virtual {p2}, Le/c/b/h;->s()J

    move-result-wide v3

    check-cast p3, Le/c/b/w;

    .line 12
    iget v1, p3, Le/c/b/w;->g:I

    invoke-virtual {p3, v1, v3, v4}, Le/c/b/w;->d(IJ)V

    goto :goto_4

    .line 13
    :sswitch_4
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    check-cast p1, Le/c/b/c;

    .line 14
    iget-boolean p1, p1, Le/c/b/c;->e:Z

    if-nez p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    invoke-static {p1}, Le/c/b/p;->mutableCopy(Le/c/b/r$g;)Le/c/b/r$g;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    :cond_7
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    invoke-virtual {p2}, Le/c/b/h;->s()J

    move-result-wide v3

    check-cast p1, Le/c/b/w;

    .line 16
    iget p3, p1, Le/c/b/w;->g:I

    invoke-virtual {p1, p3, v3, v4}, Le/c/b/w;->d(IJ)V

    goto/16 :goto_1

    .line 17
    :sswitch_5
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    invoke-virtual {p2, p1}, Le/c/b/h;->e(I)I

    move-result p1

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    check-cast p3, Le/c/b/c;

    .line 18
    iget-boolean p3, p3, Le/c/b/c;->e:Z

    if-nez p3, :cond_8

    .line 19
    invoke-virtual {p2}, Le/c/b/h;->b()I

    move-result p3

    if-lez p3, :cond_8

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    invoke-static {p3}, Le/c/b/p;->mutableCopy(Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    :cond_8
    :goto_5
    invoke-virtual {p2}, Le/c/b/h;->b()I

    move-result p3

    if-lez p3, :cond_b

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    invoke-virtual {p2}, Le/c/b/h;->r()I

    move-result v1

    check-cast p3, Le/c/b/q;

    .line 20
    iget v3, p3, Le/c/b/q;->g:I

    invoke-virtual {p3, v3, v1}, Le/c/b/q;->d(II)V

    goto :goto_5

    .line 21
    :sswitch_6
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    check-cast p1, Le/c/b/c;

    .line 22
    iget-boolean p1, p1, Le/c/b/c;->e:Z

    if-nez p1, :cond_9

    .line 23
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    invoke-static {p1}, Le/c/b/p;->mutableCopy(Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    :cond_9
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    invoke-virtual {p2}, Le/c/b/h;->r()I

    move-result p3

    goto :goto_7

    :sswitch_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    invoke-virtual {p2}, Le/c/b/h;->g()Le/c/b/g;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bytesValue_:Le/c/b/g;

    goto/16 :goto_1

    :sswitch_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    .line 24
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 25
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->valueType_:I

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    invoke-virtual {p2, p1}, Le/c/b/h;->e(I)I

    move-result p1

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    check-cast p3, Le/c/b/c;

    .line 26
    iget-boolean p3, p3, Le/c/b/c;->e:Z

    if-nez p3, :cond_a

    .line 27
    invoke-virtual {p2}, Le/c/b/h;->b()I

    move-result p3

    if-lez p3, :cond_a

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    invoke-static {p3}, Le/c/b/p;->mutableCopy(Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    :cond_a
    :goto_6
    invoke-virtual {p2}, Le/c/b/h;->b()I

    move-result p3

    if-lez p3, :cond_b

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    .line 28
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result v1

    .line 29
    check-cast p3, Le/c/b/q;

    .line 30
    iget v3, p3, Le/c/b/q;->g:I

    invoke-virtual {p3, v3, v1}, Le/c/b/q;->d(II)V

    goto :goto_6

    .line 31
    :cond_b
    iput p1, p2, Le/c/b/h;->j:I

    goto/16 :goto_3

    .line 32
    :sswitch_a
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    check-cast p1, Le/c/b/c;

    .line 33
    iget-boolean p1, p1, Le/c/b/c;->e:Z

    if-nez p1, :cond_c

    .line 34
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    invoke-static {p1}, Le/c/b/p;->mutableCopy(Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    :cond_c
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    .line 35
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p3

    .line 36
    :goto_7
    check-cast p1, Le/c/b/q;

    .line 37
    iget v1, p1, Le/c/b/q;->g:I

    invoke-virtual {p1, v1, p3}, Le/c/b/q;->d(II)V

    goto/16 :goto_1

    .line 38
    :sswitch_b
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    .line 39
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 40
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaId_:I

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {p2}, Le/c/b/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->tokenString_:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_d
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    invoke-virtual {p2}, Le/c/b/h;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->support_:Z

    goto/16 :goto_1

    :sswitch_e
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    .line 41
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 42
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->id_:I

    goto/16 :goto_1

    :sswitch_f
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    .line 43
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 44
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->type_:I
    :try_end_2
    .catch Le/c/b/s; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    :goto_8
    if-nez p1, :cond_2

    :sswitch_10
    const/4 v2, 0x1

    goto/16 :goto_1

    :goto_9
    :try_start_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Le/c/b/s;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_a
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_b
    throw p1

    :cond_d
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasType()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->type_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasType()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->type_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->type_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasId()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->id_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasId()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->id_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->id_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasSupport()Z

    move-result p1

    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->support_:Z

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasSupport()Z

    move-result v1

    iget-boolean v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->support_:Z

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->e(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->support_:Z

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasTokenString()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->tokenString_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasTokenString()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->tokenString_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->tokenString_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasAreaId()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaId_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasAreaId()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaId_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaId_:I

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    invoke-interface {p2, p1, v0}, Le/c/b/p$k;->f(Le/c/b/r$f;Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasValueType()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->valueType_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasValueType()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->valueType_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->valueType_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasBytesValue()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bytesValue_:Le/c/b/g;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasBytesValue()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bytesValue_:Le/c/b/g;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->g(ZLe/c/b/g;ZLe/c/b/g;)Le/c/b/g;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bytesValue_:Le/c/b/g;

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    invoke-interface {p2, p1, v0}, Le/c/b/p$k;->f(Le/c/b/r$f;Le/c/b/r$f;)Le/c/b/r$f;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    invoke-interface {p2, p1, v0}, Le/c/b/p$k;->k(Le/c/b/r$g;Le/c/b/r$g;)Le/c/b/r$g;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    invoke-interface {p2, p1, v0}, Le/c/b/p$k;->a(Le/c/b/r$e;Le/c/b/r$e;)Le/c/b/r$e;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasStringValue()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->stringValue_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasStringValue()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->stringValue_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->stringValue_:Ljava/lang/String;

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_e

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    :cond_e
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl$Builder;

    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$1;)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    check-cast p1, Le/c/b/c;

    .line 45
    iput-boolean v2, p1, Le/c/b/c;->e:Z

    .line 46
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    check-cast p1, Le/c/b/c;

    .line 47
    iput-boolean v2, p1, Le/c/b/c;->e:Z

    .line 48
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    check-cast p1, Le/c/b/c;

    .line 49
    iput-boolean v2, p1, Le/c/b/c;->e:Z

    .line 50
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    check-cast p1, Le/c/b/c;

    .line 51
    iput-boolean v2, p1, Le/c/b/c;->e:Z

    return-object v1

    .line 52
    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->memoizedIsInitialized:B

    if-ne p1, v0, :cond_f

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p1

    :cond_f
    if-nez p1, :cond_10

    return-object v1

    :cond_10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasType()Z

    move-result p2

    if-nez p2, :cond_12

    if-eqz p1, :cond_11

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->memoizedIsInitialized:B

    :cond_11
    return-object v1

    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->hasId()Z

    move-result p2

    if-nez p2, :cond_14

    if-eqz p1, :cond_13

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->memoizedIsInitialized:B

    :cond_13
    return-object v1

    :cond_14
    if-eqz p1, :cond_15

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->memoizedIsInitialized:B

    :cond_15
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;-><init>()V

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x8 -> :sswitch_f
        0x10 -> :sswitch_e
        0x18 -> :sswitch_d
        0x22 -> :sswitch_c
        0x28 -> :sswitch_b
        0x30 -> :sswitch_a
        0x32 -> :sswitch_9
        0x38 -> :sswitch_8
        0x42 -> :sswitch_7
        0x48 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x52 -> :sswitch_3
        0x5a -> :sswitch_2
        0x5d -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAreaId()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaId_:I

    return v0
.end method

.method public getAreaValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    check-cast v0, Le/c/b/q;

    .line 1
    invoke-virtual {v0, p1}, Le/c/b/q;->e(I)V

    iget-object v0, v0, Le/c/b/q;->f:[I

    aget p1, v0, p1

    return p1
.end method

.method public getAreaValueCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAreaValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    return-object v0
.end method

.method public getBytesValue()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bytesValue_:Le/c/b/g;

    return-object v0
.end method

.method public getFloatValues(I)F
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    check-cast v0, Le/c/b/o;

    .line 1
    invoke-virtual {v0, p1}, Le/c/b/o;->e(I)V

    iget-object v0, v0, Le/c/b/o;->f:[F

    aget p1, v0, p1

    return p1
.end method

.method public getFloatValuesCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFloatValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->id_:I

    return v0
.end method

.method public getInt32Values(I)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    check-cast v0, Le/c/b/q;

    .line 1
    invoke-virtual {v0, p1}, Le/c/b/q;->e(I)V

    iget-object v0, v0, Le/c/b/q;->f:[I

    aget p1, v0, p1

    return p1
.end method

.method public getInt32ValuesCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInt32ValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    return-object v0
.end method

.method public getInt64Values(I)J
    .locals 3

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    check-cast v0, Le/c/b/w;

    .line 1
    invoke-virtual {v0, p1}, Le/c/b/w;->e(I)V

    iget-object v0, v0, Le/c/b/w;->f:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getInt64ValuesCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInt64ValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 10

    iget v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->type_:I

    invoke-static {v1, v0}, Le/c/b/i;->f(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->id_:I

    invoke-static {v4, v3}, Le/c/b/i;->f(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->support_:Z

    const/4 v5, 0x3

    invoke-static {v5, v3}, Le/c/b/i;->b(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getTokenString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/16 v6, 0x10

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_5

    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaId_:I

    const/4 v6, 0x5

    invoke-static {v6, v3}, Le/c/b/i;->f(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    iget-object v7, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    check-cast v7, Le/c/b/q;

    invoke-virtual {v7, v3}, Le/c/b/q;->f(I)I

    move-result v7

    invoke-static {v7}, Le/c/b/i;->g(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getAreaValueList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/16 v6, 0x20

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_7

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->valueType_:I

    const/4 v6, 0x7

    invoke-static {v6, v0}, Le/c/b/i;->f(II)I

    move-result v0

    add-int/2addr v3, v0

    :cond_7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/16 v6, 0x40

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bytesValue_:Le/c/b/g;

    invoke-static {v5, v0}, Le/c/b/i;->c(ILe/c/b/g;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_8
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_9

    iget-object v6, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    check-cast v6, Le/c/b/q;

    invoke-virtual {v6, v0}, Le/c/b/q;->f(I)I

    move-result v6

    shl-int/lit8 v7, v6, 0x1

    shr-int/lit8 v6, v6, 0x1f

    xor-int/2addr v6, v7

    .line 1
    invoke-static {v6}, Le/c/b/i;->n(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr v3, v5

    .line 2
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getInt32ValuesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    iget-object v5, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    check-cast v5, Le/c/b/w;

    invoke-virtual {v5, v2}, Le/c/b/w;->f(I)J

    move-result-wide v5

    shl-long v7, v5, v1

    const/16 v9, 0x3f

    shr-long/2addr v5, v9

    xor-long/2addr v5, v7

    .line 3
    invoke-static {v5, v6}, Le/c/b/i;->p(J)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    add-int/2addr v0, v3

    .line 4
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getInt64ValuesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getFloatValuesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getFloatValuesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Le/c/b/i;->k(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_b
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0}, Le/c/b/d0;->b()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValueBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->stringValue_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->support_:Z

    return v0
.end method

.method public getTokenString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->tokenString_:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenStringBytes()Le/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->tokenString_:Ljava/lang/String;

    invoke-static {v0}, Le/c/b/g;->e(Ljava/lang/String;)Le/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->type_:I

    return v0
.end method

.method public getValueType()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->valueType_:I

    return v0
.end method

.method public hasAreaId()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

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

.method public hasBytesValue()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

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

.method public hasStringValue()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

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

.method public hasSupport()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

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

.method public hasTokenString()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasValueType()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

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
    .locals 9

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->type_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->id_:I

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->A(II)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->support_:Z

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0}, Le/c/b/i;->u(IZ)V

    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getTokenString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaId_:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->A(II)V

    :cond_4
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->areaValue_:Le/c/b/r$f;

    check-cast v4, Le/c/b/q;

    invoke-virtual {v4, v2}, Le/c/b/q;->f(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Le/c/b/i;->A(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->valueType_:I

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v2}, Le/c/b/i;->A(II)V

    :cond_6
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bytesValue_:Le/c/b/g;

    invoke-virtual {p1, v3, v2}, Le/c/b/i;->v(ILe/c/b/g;)V

    :cond_7
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int32Values_:Le/c/b/r$f;

    check-cast v3, Le/c/b/q;

    invoke-virtual {v3, v2}, Le/c/b/q;->f(I)I

    move-result v3

    const/16 v4, 0x9

    shl-int/lit8 v5, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v5

    .line 1
    invoke-virtual {p1, v4, v3}, Le/c/b/i;->E(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    .line 2
    :goto_2
    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->int64Values_:Le/c/b/r$g;

    check-cast v3, Le/c/b/w;

    invoke-virtual {v3, v2}, Le/c/b/w;->f(I)J

    move-result-wide v3

    const/16 v5, 0xa

    shl-long v6, v3, v1

    const/16 v8, 0x3f

    shr-long/2addr v3, v8

    xor-long/2addr v3, v6

    .line 3
    invoke-virtual {p1, v5, v3, v4}, Le/c/b/i;->G(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->floatValues_:Le/c/b/r$e;

    check-cast v1, Le/c/b/o;

    invoke-virtual {v1, v0}, Le/c/b/o;->f(I)F

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Le/c/b/i;->z(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->C(ILjava/lang/String;)V

    :cond_b
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
