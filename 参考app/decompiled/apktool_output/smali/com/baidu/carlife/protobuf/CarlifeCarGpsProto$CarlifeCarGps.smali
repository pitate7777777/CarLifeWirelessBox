.class public final Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
.super Le/c/b/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGpsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeCarGps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;",
        "Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGpsOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANTENNASTATE_FIELD_NUMBER:I = 0x1

.field public static final DAY_FIELD_NUMBER:I = 0xa

.field public static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

.field public static final EASTSPEED_FIELD_NUMBER:I = 0x17

.field public static final FIX_FIELD_NUMBER:I = 0xe

.field public static final HDOP_FIELD_NUMBER:I = 0xf

.field public static final HEADING_FIELD_NUMBER:I = 0x7

.field public static final HEIGHT_FIELD_NUMBER:I = 0x5

.field public static final HORPOSERROR_FIELD_NUMBER:I = 0x14

.field public static final HRS_FIELD_NUMBER:I = 0xb

.field public static final LATITUDE_FIELD_NUMBER:I = 0x3

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x4

.field public static final MIN_FIELD_NUMBER:I = 0xc

.field public static final MONTH_FIELD_NUMBER:I = 0x9

.field public static final NORTHSPEED_FIELD_NUMBER:I = 0x16

.field public static volatile PARSER:Le/c/b/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;",
            ">;"
        }
    .end annotation
.end field

.field public static final PDOP_FIELD_NUMBER:I = 0x10

.field public static final SATSUSED_FIELD_NUMBER:I = 0x12

.field public static final SATSVISIBLE_FIELD_NUMBER:I = 0x13

.field public static final SEC_FIELD_NUMBER:I = 0xd

.field public static final SIGNALQUALITY_FIELD_NUMBER:I = 0x2

.field public static final SPEED_FIELD_NUMBER:I = 0x6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x19

.field public static final VDOP_FIELD_NUMBER:I = 0x11

.field public static final VERTPOSERROR_FIELD_NUMBER:I = 0x15

.field public static final VERTSPEED_FIELD_NUMBER:I = 0x18

.field public static final YEAR_FIELD_NUMBER:I = 0x8


# instance fields
.field public antennaState_:I

.field public bitField0_:I

.field public day_:I

.field public eastSpeed_:I

.field public fix_:I

.field public hdop_:I

.field public heading_:I

.field public height_:I

.field public horPosError_:I

.field public hrs_:I

.field public latitude_:I

.field public longitude_:I

.field public memoizedIsInitialized:B

.field public min_:I

.field public month_:I

.field public northSpeed_:I

.field public pdop_:I

.field public satsUsed_:I

.field public satsVisible_:I

.field public sec_:I

.field public signalQuality_:I

.field public speed_:I

.field public timeStamp_:J

.field public vdop_:I

.field public vertPosError_:I

.field public vertSpeed_:I

.field public year_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setAntennaState(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearHeight()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setSpeed(I)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearSpeed()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setHeading(I)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearHeading()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setYear(I)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearYear()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setMonth(I)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearMonth()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setDay(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearAntennaState()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearDay()V

    return-void
.end method

.method public static synthetic access$2100(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setHrs(I)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearHrs()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setMin(I)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearMin()V

    return-void
.end method

.method public static synthetic access$2500(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setSec(I)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearSec()V

    return-void
.end method

.method public static synthetic access$2700(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setFix(I)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearFix()V

    return-void
.end method

.method public static synthetic access$2900(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setHdop(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setSignalQuality(I)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearHdop()V

    return-void
.end method

.method public static synthetic access$3100(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setPdop(I)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearPdop()V

    return-void
.end method

.method public static synthetic access$3300(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setVdop(I)V

    return-void
.end method

.method public static synthetic access$3400(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearVdop()V

    return-void
.end method

.method public static synthetic access$3500(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setSatsUsed(I)V

    return-void
.end method

.method public static synthetic access$3600(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearSatsUsed()V

    return-void
.end method

.method public static synthetic access$3700(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setSatsVisible(I)V

    return-void
.end method

.method public static synthetic access$3800(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearSatsVisible()V

    return-void
.end method

.method public static synthetic access$3900(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setHorPosError(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearSignalQuality()V

    return-void
.end method

.method public static synthetic access$4000(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearHorPosError()V

    return-void
.end method

.method public static synthetic access$4100(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setVertPosError(I)V

    return-void
.end method

.method public static synthetic access$4200(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearVertPosError()V

    return-void
.end method

.method public static synthetic access$4300(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setNorthSpeed(I)V

    return-void
.end method

.method public static synthetic access$4400(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearNorthSpeed()V

    return-void
.end method

.method public static synthetic access$4500(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setEastSpeed(I)V

    return-void
.end method

.method public static synthetic access$4600(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearEastSpeed()V

    return-void
.end method

.method public static synthetic access$4700(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setVertSpeed(I)V

    return-void
.end method

.method public static synthetic access$4800(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearVertSpeed()V

    return-void
.end method

.method public static synthetic access$4900(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setTimeStamp(J)V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setLatitude(I)V

    return-void
.end method

.method public static synthetic access$5000(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearTimeStamp()V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearLatitude()V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setLongitude(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearLongitude()V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setHeight(I)V

    return-void
.end method

.method private clearAntennaState()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    return-void
.end method

.method private clearDay()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    return-void
.end method

.method private clearEastSpeed()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    return-void
.end method

.method private clearFix()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    return-void
.end method

.method private clearHdop()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    return-void
.end method

.method private clearHeading()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    return-void
.end method

.method private clearHeight()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    return-void
.end method

.method private clearHorPosError()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    return-void
.end method

.method private clearHrs()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    return-void
.end method

.method private clearLatitude()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    return-void
.end method

.method private clearLongitude()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    return-void
.end method

.method private clearMin()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    return-void
.end method

.method private clearMonth()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    return-void
.end method

.method private clearNorthSpeed()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    return-void
.end method

.method private clearPdop()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    return-void
.end method

.method private clearSatsUsed()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    return-void
.end method

.method private clearSatsVisible()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    return-void
.end method

.method private clearSec()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    return-void
.end method

.method private clearSignalQuality()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    return-void
.end method

.method private clearSpeed()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    return-void
.end method

.method private clearTimeStamp()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    return-void
.end method

.method private clearVdop()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    return-void
.end method

.method private clearVertPosError()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    return-void
.end method

.method private clearVertSpeed()V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    return-void
.end method

.method private clearYear()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-virtual {v0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/g;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Le/c/b/h;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Le/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0}, Le/c/b/p;->parseFrom(Le/c/b/p;[B)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom([BLe/c/b/m;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0, p1}, Le/c/b/p;->parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parser()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-virtual {v0}, Le/c/b/p;->getParserForType()Le/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method private setAntennaState(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    return-void
.end method

.method private setDay(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    return-void
.end method

.method private setEastSpeed(I)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    return-void
.end method

.method private setFix(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    return-void
.end method

.method private setHdop(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    return-void
.end method

.method private setHeading(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    return-void
.end method

.method private setHeight(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    return-void
.end method

.method private setHorPosError(I)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    return-void
.end method

.method private setHrs(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    return-void
.end method

.method private setLatitude(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    return-void
.end method

.method private setLongitude(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    return-void
.end method

.method private setMin(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    return-void
.end method

.method private setMonth(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    return-void
.end method

.method private setNorthSpeed(I)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    return-void
.end method

.method private setPdop(I)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    return-void
.end method

.method private setSatsUsed(I)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    return-void
.end method

.method private setSatsVisible(I)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    return-void
.end method

.method private setSec(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    return-void
.end method

.method private setSignalQuality(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    return-void
.end method

.method private setSpeed(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    return-void
.end method

.method private setTimeStamp(J)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    return-void
.end method

.method private setVdop(I)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    return-void
.end method

.method private setVertPosError(I)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    return-void
.end method

.method private setVertSpeed(I)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    return-void
.end method

.method private setYear(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->PARSER:Le/c/b/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->PARSER:Le/c/b/z;

    if-nez p2, :cond_0

    new-instance p2, Le/c/b/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-direct {p2, p3}, Le/c/b/p$c;-><init>(Le/c/b/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->PARSER:Le/c/b/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->PARSER:Le/c/b/z;

    return-object p1

    :pswitch_1
    check-cast p2, Le/c/b/h;

    check-cast p3, Le/c/b/m;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    :try_start_1
    invoke-virtual {p2}, Le/c/b/h;->u()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->parseUnknownField(ILe/c/b/h;)Z

    move-result p1

    goto/16 :goto_2

    :sswitch_0
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 p3, 0x1000000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 1
    invoke-virtual {p2}, Le/c/b/h;->p()J

    move-result-wide v2

    .line 2
    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :sswitch_1
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 p3, 0x800000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 3
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 4
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    goto :goto_1

    :sswitch_2
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 p3, 0x400000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 5
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 6
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    goto :goto_1

    :sswitch_3
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 p3, 0x200000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 7
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    goto :goto_1

    :sswitch_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 p3, 0x100000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 9
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 10
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    goto :goto_1

    :sswitch_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 p3, 0x80000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 11
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 12
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    goto :goto_1

    :sswitch_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 p3, 0x40000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 13
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 14
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    goto :goto_1

    :sswitch_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 15
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 16
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    goto/16 :goto_1

    :sswitch_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 p3, 0x10000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 17
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 18
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    goto/16 :goto_1

    :sswitch_9
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const p3, 0x8000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 19
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 20
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    goto/16 :goto_1

    :sswitch_a
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 21
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 22
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    goto/16 :goto_1

    :sswitch_b
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 23
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 24
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    goto/16 :goto_1

    :sswitch_c
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 25
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 26
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    goto/16 :goto_1

    :sswitch_d
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 27
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 28
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    goto/16 :goto_1

    :sswitch_e
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 29
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 30
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    goto/16 :goto_1

    :sswitch_f
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 31
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 32
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    goto/16 :goto_1

    :sswitch_10
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 33
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 34
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    goto/16 :goto_1

    :sswitch_11
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 35
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 36
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    goto/16 :goto_1

    :sswitch_12
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 37
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 38
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    goto/16 :goto_1

    :sswitch_13
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 39
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 40
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    goto/16 :goto_1

    :sswitch_14
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 41
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 42
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    goto/16 :goto_1

    :sswitch_15
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 43
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 44
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    goto/16 :goto_1

    :sswitch_16
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 45
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 46
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    goto/16 :goto_1

    :sswitch_17
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 47
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 48
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    goto/16 :goto_1

    :sswitch_18
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 49
    invoke-virtual {p2}, Le/c/b/h;->n()I

    move-result p1

    .line 50
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_2
    if-nez p1, :cond_2

    :sswitch_19
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

    :cond_3
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p1

    :pswitch_3
    check-cast p2, Le/c/b/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasAntennaState()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasAntennaState()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSignalQuality()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSignalQuality()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLatitude()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLatitude()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLongitude()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLongitude()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeight()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeight()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSpeed()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSpeed()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeading()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeading()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasYear()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasYear()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMonth()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMonth()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasDay()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasDay()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHrs()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHrs()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMin()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMin()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSec()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSec()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasFix()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasFix()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHdop()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHdop()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasPdop()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasPdop()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVdop()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVdop()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsUsed()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsUsed()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsVisible()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsVisible()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHorPosError()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHorPosError()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertPosError()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertPosError()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasNorthSpeed()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasNorthSpeed()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasEastSpeed()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasEastSpeed()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertSpeed()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertSpeed()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    invoke-interface {p2, p1, v0, v1, v2}, Le/c/b/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasTimeStamp()Z

    move-result v1

    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasTimeStamp()Z

    move-result v4

    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Le/c/b/p$k;->i(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    sget-object p1, Le/c/b/p$i;->a:Le/c/b/p$i;

    if-ne p2, p1, :cond_4

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    :cond_4
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;

    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$1;)V

    return-object p1

    :pswitch_5
    return-object v2

    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p1

    :cond_5
    if-nez p1, :cond_6

    return-object v2

    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasAntennaState()Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz p1, :cond_7

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_7
    return-object v2

    :cond_8
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSignalQuality()Z

    move-result p2

    if-nez p2, :cond_a

    if-eqz p1, :cond_9

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_9
    return-object v2

    :cond_a
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLatitude()Z

    move-result p2

    if-nez p2, :cond_c

    if-eqz p1, :cond_b

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_b
    return-object v2

    :cond_c
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLongitude()Z

    move-result p2

    if-nez p2, :cond_e

    if-eqz p1, :cond_d

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_d
    return-object v2

    :cond_e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeight()Z

    move-result p2

    if-nez p2, :cond_10

    if-eqz p1, :cond_f

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_f
    return-object v2

    :cond_10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSpeed()Z

    move-result p2

    if-nez p2, :cond_12

    if-eqz p1, :cond_11

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_11
    return-object v2

    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeading()Z

    move-result p2

    if-nez p2, :cond_14

    if-eqz p1, :cond_13

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_13
    return-object v2

    :cond_14
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasYear()Z

    move-result p2

    if-nez p2, :cond_16

    if-eqz p1, :cond_15

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_15
    return-object v2

    :cond_16
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMonth()Z

    move-result p2

    if-nez p2, :cond_18

    if-eqz p1, :cond_17

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_17
    return-object v2

    :cond_18
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasDay()Z

    move-result p2

    if-nez p2, :cond_1a

    if-eqz p1, :cond_19

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_19
    return-object v2

    :cond_1a
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHrs()Z

    move-result p2

    if-nez p2, :cond_1c

    if-eqz p1, :cond_1b

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_1b
    return-object v2

    :cond_1c
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMin()Z

    move-result p2

    if-nez p2, :cond_1e

    if-eqz p1, :cond_1d

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_1d
    return-object v2

    :cond_1e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSec()Z

    move-result p2

    if-nez p2, :cond_20

    if-eqz p1, :cond_1f

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_1f
    return-object v2

    :cond_20
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasFix()Z

    move-result p2

    if-nez p2, :cond_22

    if-eqz p1, :cond_21

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_21
    return-object v2

    :cond_22
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHdop()Z

    move-result p2

    if-nez p2, :cond_24

    if-eqz p1, :cond_23

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_23
    return-object v2

    :cond_24
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasPdop()Z

    move-result p2

    if-nez p2, :cond_26

    if-eqz p1, :cond_25

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_25
    return-object v2

    :cond_26
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVdop()Z

    move-result p2

    if-nez p2, :cond_28

    if-eqz p1, :cond_27

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_27
    return-object v2

    :cond_28
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsUsed()Z

    move-result p2

    if-nez p2, :cond_2a

    if-eqz p1, :cond_29

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_29
    return-object v2

    :cond_2a
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsVisible()Z

    move-result p2

    if-nez p2, :cond_2c

    if-eqz p1, :cond_2b

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_2b
    return-object v2

    :cond_2c
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHorPosError()Z

    move-result p2

    if-nez p2, :cond_2e

    if-eqz p1, :cond_2d

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_2d
    return-object v2

    :cond_2e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertPosError()Z

    move-result p2

    if-nez p2, :cond_30

    if-eqz p1, :cond_2f

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_2f
    return-object v2

    :cond_30
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasNorthSpeed()Z

    move-result p2

    if-nez p2, :cond_32

    if-eqz p1, :cond_31

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_31
    return-object v2

    :cond_32
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasEastSpeed()Z

    move-result p2

    if-nez p2, :cond_34

    if-eqz p1, :cond_33

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_33
    return-object v2

    :cond_34
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertSpeed()Z

    move-result p2

    if-nez p2, :cond_36

    if-eqz p1, :cond_35

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_35
    return-object v2

    :cond_36
    if-eqz p1, :cond_37

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    :cond_37
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;-><init>()V

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_19
        0x8 -> :sswitch_18
        0x10 -> :sswitch_17
        0x18 -> :sswitch_16
        0x20 -> :sswitch_15
        0x28 -> :sswitch_14
        0x30 -> :sswitch_13
        0x38 -> :sswitch_12
        0x40 -> :sswitch_11
        0x48 -> :sswitch_10
        0x50 -> :sswitch_f
        0x58 -> :sswitch_e
        0x60 -> :sswitch_d
        0x68 -> :sswitch_c
        0x70 -> :sswitch_b
        0x78 -> :sswitch_a
        0x80 -> :sswitch_9
        0x88 -> :sswitch_8
        0x90 -> :sswitch_7
        0x98 -> :sswitch_6
        0xa0 -> :sswitch_5
        0xa8 -> :sswitch_4
        0xb0 -> :sswitch_3
        0xb8 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAntennaState()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    return v0
.end method

.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    return v0
.end method

.method public getEastSpeed()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    return v0
.end method

.method public getFix()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    return v0
.end method

.method public getHdop()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    return v0
.end method

.method public getHeading()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    return v0
.end method

.method public getHorPosError()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    return v0
.end method

.method public getHrs()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    return v0
.end method

.method public getLatitude()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    return v0
.end method

.method public getNorthSpeed()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    return v0
.end method

.method public getPdop()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    return v0
.end method

.method public getSatsUsed()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    return v0
.end method

.method public getSatsVisible()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    return v0
.end method

.method public getSec()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    invoke-static {v2, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    invoke-static {v2, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    const/4 v3, 0x3

    invoke-static {v3, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    const/4 v4, 0x5

    invoke-static {v4, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    const/4 v4, 0x6

    invoke-static {v4, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_7

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    const/4 v4, 0x7

    invoke-static {v4, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v4, 0x80

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_8

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    invoke-static {v3, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v3, 0x100

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_9

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    const/16 v3, 0x9

    invoke-static {v3, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v3, 0x200

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    const/16 v3, 0xa

    invoke-static {v3, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v3, 0x400

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_b

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    const/16 v3, 0xb

    invoke-static {v3, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v3, 0x800

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_c

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    const/16 v3, 0xc

    invoke-static {v3, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v3, 0x1000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_d

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    const/16 v3, 0xd

    invoke-static {v3, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v3, 0x2000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_e

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    const/16 v3, 0xe

    invoke-static {v3, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v3, 0x4000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_f

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    const/16 v3, 0xf

    invoke-static {v3, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_10

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    invoke-static {v2, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    const/16 v2, 0x11

    invoke-static {v2, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    const/16 v2, 0x12

    invoke-static {v2, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    const/16 v2, 0x13

    invoke-static {v2, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    const/16 v2, 0x14

    invoke-static {v2, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    const/16 v2, 0x15

    invoke-static {v2, v1}, Le/c/b/i;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    const/16 v2, 0x16

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    const/16 v2, 0x17

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_18

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    const/16 v2, 0x18

    invoke-static {v2, v1}, Le/c/b/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_19

    iget-wide v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    const/16 v3, 0x19

    invoke-static {v3, v1, v2}, Le/c/b/i;->o(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget-object v1, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v1}, Le/c/b/d0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/p;->memoizedSerializedSize:I

    return v1
.end method

.method public getSignalQuality()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    return-wide v0
.end method

.method public getVdop()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    return v0
.end method

.method public getVertPosError()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    return v0
.end method

.method public getVertSpeed()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    return v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    return v0
.end method

.method public hasAntennaState()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDay()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEastSpeed()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFix()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHdop()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeading()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasHeight()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasHorPosError()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHrs()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLatitude()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasLongitude()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasMin()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMonth()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNorthSpeed()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPdop()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSatsUsed()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSatsVisible()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSec()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSignalQuality()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasSpeed()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasTimeStamp()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVdop()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVertPosError()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVertSpeed()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasYear()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public writeTo(Le/c/b/i;)V
    .locals 4

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->E(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->E(II)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->A(II)V

    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v0}, Le/c/b/i;->A(II)V

    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v0}, Le/c/b/i;->E(II)V

    :cond_5
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Le/c/b/i;->E(II)V

    :cond_6
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->E(II)V

    :cond_7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_8

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->E(II)V

    :cond_8
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_9

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->E(II)V

    :cond_9
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_a

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->E(II)V

    :cond_a
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_b

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->E(II)V

    :cond_b
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_c

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->E(II)V

    :cond_c
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_d

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->E(II)V

    :cond_d
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/16 v2, 0x4000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_e

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Le/c/b/i;->E(II)V

    :cond_e
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_f

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->E(II)V

    :cond_f
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->E(II)V

    :cond_10
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->E(II)V

    :cond_11
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->E(II)V

    :cond_12
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->E(II)V

    :cond_13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    const/16 v1, 0x15

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->E(II)V

    :cond_14
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    const/16 v1, 0x16

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_15
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_16

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    const/16 v1, 0x17

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_16
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    const/16 v1, 0x18

    invoke-virtual {p1, v1, v0}, Le/c/b/i;->A(II)V

    :cond_17
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_18

    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v0, v1}, Le/c/b/i;->G(IJ)V

    :cond_18
    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1}, Le/c/b/d0;->f(Le/c/b/i;)V

    return-void
.end method
