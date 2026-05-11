.class public final Lf/k/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/k/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/k/f$b<",
        "Lf/k/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic e:Lf/k/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf/k/e$a;

    invoke-direct {v0}, Lf/k/e$a;-><init>()V

    sput-object v0, Lf/k/e$a;->e:Lf/k/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
