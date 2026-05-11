.class public abstract Lf/n/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/n/c$a;
    }
.end annotation


# static fields
.field public static final e:Lf/n/c;

.field public static final f:Lf/n/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf/n/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf/n/c$a;-><init>(Lf/m/b/b;)V

    sput-object v0, Lf/n/c;->f:Lf/n/c$a;

    sget-object v0, Lf/l/b;->a:Lf/l/a;

    invoke-virtual {v0}, Lf/l/a;->b()Lf/n/c;

    move-result-object v0

    sput-object v0, Lf/n/c;->e:Lf/n/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method
