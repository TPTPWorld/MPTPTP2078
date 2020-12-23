%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:21:22 EST 2020

% Result     : CounterSatisfiable 0.13s
% Output     : Saturation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   88 ( 460 expanded)
%              Number of clauses        :   67 ( 210 expanded)
%              Number of leaves         :   10 ( 122 expanded)
%              Depth                    :    6
%              Number of atoms          :  364 (1778 expanded)
%              Number of equality atoms :   28 ( 165 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   16 (   4 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(dt_k2_yellow_0,axiom,(
    ! [X1,X2] :
      ( l1_orders_2(X1)
     => m1_subset_1(k2_yellow_0(X1,X2),u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_yellow_0)).

fof(d12_yellow_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => k4_yellow_0(X1) = k2_yellow_0(X1,k1_xboole_0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d12_yellow_0)).

fof(d10_orders_2,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ( r2_orders_2(X1,X2,X3)
              <=> ( r1_orders_2(X1,X2,X3)
                  & X2 != X3 ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_orders_2)).

fof(t30_orders_2,axiom,(
    ! [X1] :
      ( ( v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ~ ( r1_orders_2(X1,X2,X3)
                  & r2_orders_2(X1,X3,X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t30_orders_2)).

fof(dt_k3_yellow_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => m1_subset_1(k3_yellow_0(X1),u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k3_yellow_0)).

fof(t44_yellow_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v5_orders_2(X1)
        & v1_yellow_0(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => r1_orders_2(X1,k3_yellow_0(X1),X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_yellow_0)).

fof(t45_yellow_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v5_orders_2(X1)
        & v2_yellow_0(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => r1_orders_2(X1,X2,k4_yellow_0(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t45_yellow_0)).

fof(t5_waybel_7,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v5_orders_2(X1)
        & v3_yellow_0(X1)
        & l1_orders_2(X1) )
     => ( v7_struct_0(X1)
      <=> k4_yellow_0(X1) = k3_yellow_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_waybel_7)).

fof(cc4_yellow_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ( v3_yellow_0(X1)
       => ( v1_yellow_0(X1)
          & v2_yellow_0(X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc4_yellow_0)).

fof(dt_l1_orders_2,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => l1_struct_0(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_l1_orders_2)).

fof(c_0_10,plain,(
    ! [X13,X14] :
      ( ~ l1_orders_2(X13)
      | m1_subset_1(k2_yellow_0(X13,X14),u1_struct_0(X13)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_yellow_0])])).

fof(c_0_11,plain,(
    ! [X12] :
      ( ~ l1_orders_2(X12)
      | k4_yellow_0(X12) = k2_yellow_0(X12,k1_xboole_0) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d12_yellow_0])])).

fof(c_0_12,plain,(
    ! [X4,X5,X6] :
      ( ( r1_orders_2(X4,X5,X6)
        | ~ r2_orders_2(X4,X5,X6)
        | ~ m1_subset_1(X6,u1_struct_0(X4))
        | ~ m1_subset_1(X5,u1_struct_0(X4))
        | ~ l1_orders_2(X4) )
      & ( X5 != X6
        | ~ r2_orders_2(X4,X5,X6)
        | ~ m1_subset_1(X6,u1_struct_0(X4))
        | ~ m1_subset_1(X5,u1_struct_0(X4))
        | ~ l1_orders_2(X4) )
      & ( ~ r1_orders_2(X4,X5,X6)
        | X5 = X6
        | r2_orders_2(X4,X5,X6)
        | ~ m1_subset_1(X6,u1_struct_0(X4))
        | ~ m1_subset_1(X5,u1_struct_0(X4))
        | ~ l1_orders_2(X4) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_orders_2])])])])).

cnf(c_0_13,plain,
    ( m1_subset_1(k2_yellow_0(X1,X2),u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10]),
    [final]).

cnf(c_0_14,plain,
    ( k4_yellow_0(X1) = k2_yellow_0(X1,k1_xboole_0)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11]),
    [final]).

fof(c_0_15,plain,(
    ! [X8,X9,X10] :
      ( ~ v5_orders_2(X8)
      | ~ l1_orders_2(X8)
      | ~ m1_subset_1(X9,u1_struct_0(X8))
      | ~ m1_subset_1(X10,u1_struct_0(X8))
      | ~ r1_orders_2(X8,X9,X10)
      | ~ r2_orders_2(X8,X10,X9) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t30_orders_2])])])).

cnf(c_0_16,plain,
    ( X2 = X3
    | r2_orders_2(X1,X2,X3)
    | ~ r1_orders_2(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12]),
    [final]).

fof(c_0_17,plain,(
    ! [X15] :
      ( ~ l1_orders_2(X15)
      | m1_subset_1(k3_yellow_0(X15),u1_struct_0(X15)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_yellow_0])])).

fof(c_0_18,plain,(
    ! [X16,X17] :
      ( v2_struct_0(X16)
      | ~ v5_orders_2(X16)
      | ~ v1_yellow_0(X16)
      | ~ l1_orders_2(X16)
      | ~ m1_subset_1(X17,u1_struct_0(X16))
      | r1_orders_2(X16,k3_yellow_0(X16),X17) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t44_yellow_0])])])])).

cnf(c_0_19,plain,
    ( m1_subset_1(k4_yellow_0(X1),u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14]),
    [final]).

fof(c_0_20,plain,(
    ! [X18,X19] :
      ( v2_struct_0(X18)
      | ~ v5_orders_2(X18)
      | ~ v2_yellow_0(X18)
      | ~ l1_orders_2(X18)
      | ~ m1_subset_1(X19,u1_struct_0(X18))
      | r1_orders_2(X18,X19,k4_yellow_0(X18)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t45_yellow_0])])])])).

cnf(c_0_21,plain,
    ( ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ r1_orders_2(X1,X2,X3)
    | ~ r2_orders_2(X1,X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15]),
    [final]).

cnf(c_0_22,plain,
    ( X1 = k2_yellow_0(X2,X3)
    | r2_orders_2(X2,X1,k2_yellow_0(X2,X3))
    | ~ r1_orders_2(X2,X1,k2_yellow_0(X2,X3))
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ l1_orders_2(X2) ),
    inference(spm,[status(thm)],[c_0_16,c_0_13]),
    [final]).

cnf(c_0_23,plain,
    ( m1_subset_1(k3_yellow_0(X1),u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17]),
    [final]).

cnf(c_0_24,plain,
    ( v2_struct_0(X1)
    | r1_orders_2(X1,k3_yellow_0(X1),X2)
    | ~ v5_orders_2(X1)
    | ~ v1_yellow_0(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_18]),
    [final]).

cnf(c_0_25,plain,
    ( X1 = k4_yellow_0(X2)
    | r2_orders_2(X2,X1,k4_yellow_0(X2))
    | ~ r1_orders_2(X2,X1,k4_yellow_0(X2))
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ l1_orders_2(X2) ),
    inference(spm,[status(thm)],[c_0_16,c_0_19]),
    [final]).

cnf(c_0_26,plain,
    ( v2_struct_0(X1)
    | r1_orders_2(X1,X2,k4_yellow_0(X1))
    | ~ v5_orders_2(X1)
    | ~ v2_yellow_0(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_20]),
    [final]).

cnf(c_0_27,plain,
    ( ~ v5_orders_2(X1)
    | ~ r1_orders_2(X1,X2,k2_yellow_0(X1,X3))
    | ~ r2_orders_2(X1,k2_yellow_0(X1,X3),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_21,c_0_13]),
    [final]).

cnf(c_0_28,plain,
    ( r1_orders_2(X1,X2,X3)
    | ~ r2_orders_2(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12]),
    [final]).

cnf(c_0_29,plain,
    ( ~ v5_orders_2(X1)
    | ~ r1_orders_2(X1,X2,k4_yellow_0(X1))
    | ~ r2_orders_2(X1,k4_yellow_0(X1),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_21,c_0_19]),
    [final]).

cnf(c_0_30,plain,
    ( X1 != X2
    | ~ r2_orders_2(X3,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X3))
    | ~ m1_subset_1(X1,u1_struct_0(X3))
    | ~ l1_orders_2(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_31,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v5_orders_2(X1)
          & v3_yellow_0(X1)
          & l1_orders_2(X1) )
       => ( v7_struct_0(X1)
        <=> k4_yellow_0(X1) = k3_yellow_0(X1) ) ) ),
    inference(assume_negation,[status(cth)],[t5_waybel_7])).

cnf(c_0_32,plain,
    ( k2_yellow_0(X1,X2) = k3_yellow_0(X1)
    | r2_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ r1_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23]),
    [final]).

cnf(c_0_33,plain,
    ( v2_struct_0(X1)
    | r1_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ v1_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_24,c_0_13]),
    [final]).

cnf(c_0_34,plain,
    ( k2_yellow_0(X1,X2) = k4_yellow_0(X1)
    | r2_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))
    | ~ r1_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_25,c_0_13]),
    [final]).

cnf(c_0_35,plain,
    ( v2_struct_0(X1)
    | r1_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))
    | ~ v2_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_13]),
    [final]).

cnf(c_0_36,plain,
    ( X1 = k3_yellow_0(X2)
    | r2_orders_2(X2,X1,k3_yellow_0(X2))
    | ~ r1_orders_2(X2,X1,k3_yellow_0(X2))
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ l1_orders_2(X2) ),
    inference(spm,[status(thm)],[c_0_16,c_0_23]),
    [final]).

cnf(c_0_37,plain,
    ( k4_yellow_0(X1) = k3_yellow_0(X1)
    | r2_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))
    | ~ r1_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_25,c_0_23]),
    [final]).

cnf(c_0_38,plain,
    ( v2_struct_0(X1)
    | r1_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))
    | ~ v1_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_24,c_0_19]),
    [final]).

cnf(c_0_39,plain,
    ( v2_struct_0(X1)
    | r1_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))
    | ~ v2_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_23]),
    [final]).

cnf(c_0_40,plain,
    ( ~ v5_orders_2(X1)
    | ~ r1_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ r2_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_23]),
    [final]).

cnf(c_0_41,plain,
    ( r1_orders_2(X1,X2,k2_yellow_0(X1,X3))
    | ~ r2_orders_2(X1,X2,k2_yellow_0(X1,X3))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_28,c_0_13]),
    [final]).

cnf(c_0_42,plain,
    ( r1_orders_2(X1,X2,k4_yellow_0(X1))
    | ~ r2_orders_2(X1,X2,k4_yellow_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_28,c_0_19]),
    [final]).

cnf(c_0_43,plain,
    ( ~ v5_orders_2(X1)
    | ~ r1_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))
    | ~ r2_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_29,c_0_13]),
    [final]).

cnf(c_0_44,plain,
    ( ~ v5_orders_2(X1)
    | ~ r1_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))
    | ~ r2_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_29,c_0_23]),
    [final]).

cnf(c_0_45,plain,
    ( r1_orders_2(X1,X2,k3_yellow_0(X1))
    | ~ r2_orders_2(X1,X2,k3_yellow_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_28,c_0_23]),
    [final]).

cnf(c_0_46,plain,
    ( ~ v5_orders_2(X1)
    | ~ r1_orders_2(X1,X2,k3_yellow_0(X1))
    | ~ r2_orders_2(X1,k3_yellow_0(X1),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_21,c_0_23]),
    [final]).

cnf(c_0_47,plain,
    ( ~ r2_orders_2(X1,X2,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(er,[status(thm)],[c_0_30]),
    [final]).

fof(c_0_48,plain,(
    ! [X11] :
      ( ( v1_yellow_0(X11)
        | ~ v3_yellow_0(X11)
        | ~ l1_orders_2(X11) )
      & ( v2_yellow_0(X11)
        | ~ v3_yellow_0(X11)
        | ~ l1_orders_2(X11) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc4_yellow_0])])])).

fof(c_0_49,plain,(
    ! [X7] :
      ( ~ l1_orders_2(X7)
      | l1_struct_0(X7) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_orders_2])])).

fof(c_0_50,negated_conjecture,
    ( ~ v2_struct_0(esk1_0)
    & v5_orders_2(esk1_0)
    & v3_yellow_0(esk1_0)
    & l1_orders_2(esk1_0)
    & ( ~ v7_struct_0(esk1_0)
      | k4_yellow_0(esk1_0) != k3_yellow_0(esk1_0) )
    & ( v7_struct_0(esk1_0)
      | k4_yellow_0(esk1_0) = k3_yellow_0(esk1_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_31])])])])).

cnf(c_0_51,plain,
    ( k2_yellow_0(X1,X2) = k3_yellow_0(X1)
    | v2_struct_0(X1)
    | r2_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ v1_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33]),
    [final]).

cnf(c_0_52,plain,
    ( k2_yellow_0(X1,X2) = k2_yellow_0(X1,X3)
    | r2_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X3))
    | ~ r1_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X3))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_22,c_0_13]),
    [final]).

cnf(c_0_53,plain,
    ( k2_yellow_0(X1,X2) = k4_yellow_0(X1)
    | r2_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ r1_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_22,c_0_19]),
    [final]).

cnf(c_0_54,plain,
    ( k2_yellow_0(X1,X2) = k4_yellow_0(X1)
    | v2_struct_0(X1)
    | r2_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))
    | ~ v2_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35]),
    [final]).

cnf(c_0_55,plain,
    ( k2_yellow_0(X1,X2) = k3_yellow_0(X1)
    | r2_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))
    | ~ r1_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_36,c_0_13]),
    [final]).

cnf(c_0_56,plain,
    ( k4_yellow_0(X1) = k3_yellow_0(X1)
    | v2_struct_0(X1)
    | r2_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))
    | ~ v1_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38]),
    [final]).

cnf(c_0_57,plain,
    ( k4_yellow_0(X1) = k3_yellow_0(X1)
    | v2_struct_0(X1)
    | r2_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))
    | ~ v2_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_37,c_0_39]),
    [final]).

cnf(c_0_58,plain,
    ( k4_yellow_0(X1) = k3_yellow_0(X1)
    | r2_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))
    | ~ r1_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_36,c_0_19]),
    [final]).

cnf(c_0_59,plain,
    ( v2_struct_0(X1)
    | ~ v1_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ r2_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_40,c_0_33]),
    [final]).

cnf(c_0_60,plain,
    ( r1_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X3))
    | ~ r2_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X3))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_41,c_0_13]),
    [final]).

cnf(c_0_61,plain,
    ( r1_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))
    | ~ r2_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_42,c_0_13]),
    [final]).

cnf(c_0_62,plain,
    ( v2_struct_0(X1)
    | ~ v2_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ r2_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_43,c_0_35]),
    [final]).

cnf(c_0_63,plain,
    ( v2_struct_0(X1)
    | ~ v1_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ r2_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_44,c_0_38]),
    [final]).

cnf(c_0_64,plain,
    ( v2_struct_0(X1)
    | ~ v2_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ r2_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_44,c_0_39]),
    [final]).

cnf(c_0_65,plain,
    ( ~ v5_orders_2(X1)
    | ~ r1_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X3))
    | ~ r2_orders_2(X1,k2_yellow_0(X1,X3),k2_yellow_0(X1,X2))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_13]),
    [final]).

cnf(c_0_66,plain,
    ( ~ v5_orders_2(X1)
    | ~ r1_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ r2_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_19]),
    [final]).

cnf(c_0_67,plain,
    ( v2_struct_0(X1)
    | r1_orders_2(X1,k4_yellow_0(X1),k4_yellow_0(X1))
    | ~ v2_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_19]),
    [final]).

cnf(c_0_68,plain,
    ( v2_struct_0(X1)
    | r1_orders_2(X1,k3_yellow_0(X1),k3_yellow_0(X1))
    | ~ v1_yellow_0(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_24,c_0_23]),
    [final]).

cnf(c_0_69,plain,
    ( r1_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ r2_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_41,c_0_19]),
    [final]).

cnf(c_0_70,plain,
    ( r1_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ r2_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_41,c_0_23]),
    [final]).

cnf(c_0_71,plain,
    ( r1_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))
    | ~ r2_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_45,c_0_13]),
    [final]).

cnf(c_0_72,plain,
    ( r1_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))
    | ~ r2_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_42,c_0_23]),
    [final]).

cnf(c_0_73,plain,
    ( r1_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))
    | ~ r2_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_45,c_0_19]),
    [final]).

cnf(c_0_74,plain,
    ( ~ v5_orders_2(X1)
    | ~ r1_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))
    | ~ r2_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_46,c_0_13]),
    [final]).

cnf(c_0_75,plain,
    ( ~ v5_orders_2(X1)
    | ~ r1_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))
    | ~ r2_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_46,c_0_19]),
    [final]).

cnf(c_0_76,plain,
    ( ~ r2_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X2))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_47,c_0_13]),
    [final]).

cnf(c_0_77,plain,
    ( ~ r2_orders_2(X1,k4_yellow_0(X1),k4_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_47,c_0_19]),
    [final]).

cnf(c_0_78,plain,
    ( ~ r2_orders_2(X1,k3_yellow_0(X1),k3_yellow_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_47,c_0_23]),
    [final]).

cnf(c_0_79,plain,
    ( v2_yellow_0(X1)
    | ~ v3_yellow_0(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_48]),
    [final]).

cnf(c_0_80,plain,
    ( v1_yellow_0(X1)
    | ~ v3_yellow_0(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_48]),
    [final]).

cnf(c_0_81,plain,
    ( l1_struct_0(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_49]),
    [final]).

cnf(c_0_82,negated_conjecture,
    ( v7_struct_0(esk1_0)
    | k4_yellow_0(esk1_0) = k3_yellow_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_50]),
    [final]).

cnf(c_0_83,negated_conjecture,
    ( ~ v7_struct_0(esk1_0)
    | k4_yellow_0(esk1_0) != k3_yellow_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_50]),
    [final]).

cnf(c_0_84,negated_conjecture,
    ( ~ v2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_50]),
    [final]).

cnf(c_0_85,negated_conjecture,
    ( v3_yellow_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_50]),
    [final]).

cnf(c_0_86,negated_conjecture,
    ( v5_orders_2(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_50]),
    [final]).

cnf(c_0_87,negated_conjecture,
    ( l1_orders_2(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_50]),
    [final]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n022.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:42:55 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic H_____047_C18_F1_PI_AE_R8_CS_SP_S2S
% 0.13/0.38  # and selection function SelectNewComplexAHP.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.027 s
% 0.13/0.38  
% 0.13/0.38  # No proof found!
% 0.13/0.38  # SZS status CounterSatisfiable
% 0.13/0.38  # SZS output start Saturation
% 0.13/0.38  fof(dt_k2_yellow_0, axiom, ![X1, X2]:(l1_orders_2(X1)=>m1_subset_1(k2_yellow_0(X1,X2),u1_struct_0(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_yellow_0)).
% 0.13/0.38  fof(d12_yellow_0, axiom, ![X1]:(l1_orders_2(X1)=>k4_yellow_0(X1)=k2_yellow_0(X1,k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d12_yellow_0)).
% 0.13/0.38  fof(d10_orders_2, axiom, ![X1]:(l1_orders_2(X1)=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r2_orders_2(X1,X2,X3)<=>(r1_orders_2(X1,X2,X3)&X2!=X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_orders_2)).
% 0.13/0.38  fof(t30_orders_2, axiom, ![X1]:((v5_orders_2(X1)&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>~((r1_orders_2(X1,X2,X3)&r2_orders_2(X1,X3,X2)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t30_orders_2)).
% 0.13/0.38  fof(dt_k3_yellow_0, axiom, ![X1]:(l1_orders_2(X1)=>m1_subset_1(k3_yellow_0(X1),u1_struct_0(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k3_yellow_0)).
% 0.13/0.38  fof(t44_yellow_0, axiom, ![X1]:((((~(v2_struct_0(X1))&v5_orders_2(X1))&v1_yellow_0(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>r1_orders_2(X1,k3_yellow_0(X1),X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t44_yellow_0)).
% 0.13/0.38  fof(t45_yellow_0, axiom, ![X1]:((((~(v2_struct_0(X1))&v5_orders_2(X1))&v2_yellow_0(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>r1_orders_2(X1,X2,k4_yellow_0(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t45_yellow_0)).
% 0.13/0.38  fof(t5_waybel_7, conjecture, ![X1]:((((~(v2_struct_0(X1))&v5_orders_2(X1))&v3_yellow_0(X1))&l1_orders_2(X1))=>(v7_struct_0(X1)<=>k4_yellow_0(X1)=k3_yellow_0(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_waybel_7)).
% 0.13/0.38  fof(cc4_yellow_0, axiom, ![X1]:(l1_orders_2(X1)=>(v3_yellow_0(X1)=>(v1_yellow_0(X1)&v2_yellow_0(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc4_yellow_0)).
% 0.13/0.38  fof(dt_l1_orders_2, axiom, ![X1]:(l1_orders_2(X1)=>l1_struct_0(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_l1_orders_2)).
% 0.13/0.38  fof(c_0_10, plain, ![X13, X14]:(~l1_orders_2(X13)|m1_subset_1(k2_yellow_0(X13,X14),u1_struct_0(X13))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_yellow_0])])).
% 0.13/0.38  fof(c_0_11, plain, ![X12]:(~l1_orders_2(X12)|k4_yellow_0(X12)=k2_yellow_0(X12,k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d12_yellow_0])])).
% 0.13/0.38  fof(c_0_12, plain, ![X4, X5, X6]:(((r1_orders_2(X4,X5,X6)|~r2_orders_2(X4,X5,X6)|~m1_subset_1(X6,u1_struct_0(X4))|~m1_subset_1(X5,u1_struct_0(X4))|~l1_orders_2(X4))&(X5!=X6|~r2_orders_2(X4,X5,X6)|~m1_subset_1(X6,u1_struct_0(X4))|~m1_subset_1(X5,u1_struct_0(X4))|~l1_orders_2(X4)))&(~r1_orders_2(X4,X5,X6)|X5=X6|r2_orders_2(X4,X5,X6)|~m1_subset_1(X6,u1_struct_0(X4))|~m1_subset_1(X5,u1_struct_0(X4))|~l1_orders_2(X4))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_orders_2])])])])).
% 0.13/0.38  cnf(c_0_13, plain, (m1_subset_1(k2_yellow_0(X1,X2),u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_10]), ['final']).
% 0.13/0.38  cnf(c_0_14, plain, (k4_yellow_0(X1)=k2_yellow_0(X1,k1_xboole_0)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_11]), ['final']).
% 0.13/0.38  fof(c_0_15, plain, ![X8, X9, X10]:(~v5_orders_2(X8)|~l1_orders_2(X8)|(~m1_subset_1(X9,u1_struct_0(X8))|(~m1_subset_1(X10,u1_struct_0(X8))|(~r1_orders_2(X8,X9,X10)|~r2_orders_2(X8,X10,X9))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t30_orders_2])])])).
% 0.13/0.38  cnf(c_0_16, plain, (X2=X3|r2_orders_2(X1,X2,X3)|~r1_orders_2(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_12]), ['final']).
% 0.13/0.38  fof(c_0_17, plain, ![X15]:(~l1_orders_2(X15)|m1_subset_1(k3_yellow_0(X15),u1_struct_0(X15))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_yellow_0])])).
% 0.13/0.38  fof(c_0_18, plain, ![X16, X17]:(v2_struct_0(X16)|~v5_orders_2(X16)|~v1_yellow_0(X16)|~l1_orders_2(X16)|(~m1_subset_1(X17,u1_struct_0(X16))|r1_orders_2(X16,k3_yellow_0(X16),X17))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t44_yellow_0])])])])).
% 0.13/0.38  cnf(c_0_19, plain, (m1_subset_1(k4_yellow_0(X1),u1_struct_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_13, c_0_14]), ['final']).
% 0.13/0.38  fof(c_0_20, plain, ![X18, X19]:(v2_struct_0(X18)|~v5_orders_2(X18)|~v2_yellow_0(X18)|~l1_orders_2(X18)|(~m1_subset_1(X19,u1_struct_0(X18))|r1_orders_2(X18,X19,k4_yellow_0(X18)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t45_yellow_0])])])])).
% 0.13/0.38  cnf(c_0_21, plain, (~v5_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))|~r1_orders_2(X1,X2,X3)|~r2_orders_2(X1,X3,X2)), inference(split_conjunct,[status(thm)],[c_0_15]), ['final']).
% 0.13/0.38  cnf(c_0_22, plain, (X1=k2_yellow_0(X2,X3)|r2_orders_2(X2,X1,k2_yellow_0(X2,X3))|~r1_orders_2(X2,X1,k2_yellow_0(X2,X3))|~m1_subset_1(X1,u1_struct_0(X2))|~l1_orders_2(X2)), inference(spm,[status(thm)],[c_0_16, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_23, plain, (m1_subset_1(k3_yellow_0(X1),u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_17]), ['final']).
% 0.13/0.38  cnf(c_0_24, plain, (v2_struct_0(X1)|r1_orders_2(X1,k3_yellow_0(X1),X2)|~v5_orders_2(X1)|~v1_yellow_0(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_18]), ['final']).
% 0.13/0.38  cnf(c_0_25, plain, (X1=k4_yellow_0(X2)|r2_orders_2(X2,X1,k4_yellow_0(X2))|~r1_orders_2(X2,X1,k4_yellow_0(X2))|~m1_subset_1(X1,u1_struct_0(X2))|~l1_orders_2(X2)), inference(spm,[status(thm)],[c_0_16, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_26, plain, (v2_struct_0(X1)|r1_orders_2(X1,X2,k4_yellow_0(X1))|~v5_orders_2(X1)|~v2_yellow_0(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_20]), ['final']).
% 0.13/0.38  cnf(c_0_27, plain, (~v5_orders_2(X1)|~r1_orders_2(X1,X2,k2_yellow_0(X1,X3))|~r2_orders_2(X1,k2_yellow_0(X1,X3),X2)|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_21, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_28, plain, (r1_orders_2(X1,X2,X3)|~r2_orders_2(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_12]), ['final']).
% 0.13/0.38  cnf(c_0_29, plain, (~v5_orders_2(X1)|~r1_orders_2(X1,X2,k4_yellow_0(X1))|~r2_orders_2(X1,k4_yellow_0(X1),X2)|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_21, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_30, plain, (X1!=X2|~r2_orders_2(X3,X1,X2)|~m1_subset_1(X2,u1_struct_0(X3))|~m1_subset_1(X1,u1_struct_0(X3))|~l1_orders_2(X3)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  fof(c_0_31, negated_conjecture, ~(![X1]:((((~(v2_struct_0(X1))&v5_orders_2(X1))&v3_yellow_0(X1))&l1_orders_2(X1))=>(v7_struct_0(X1)<=>k4_yellow_0(X1)=k3_yellow_0(X1)))), inference(assume_negation,[status(cth)],[t5_waybel_7])).
% 0.13/0.38  cnf(c_0_32, plain, (k2_yellow_0(X1,X2)=k3_yellow_0(X1)|r2_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))|~r1_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_22, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_33, plain, (v2_struct_0(X1)|r1_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))|~v1_yellow_0(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_24, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_34, plain, (k2_yellow_0(X1,X2)=k4_yellow_0(X1)|r2_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))|~r1_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_25, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_35, plain, (v2_struct_0(X1)|r1_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))|~v2_yellow_0(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_26, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_36, plain, (X1=k3_yellow_0(X2)|r2_orders_2(X2,X1,k3_yellow_0(X2))|~r1_orders_2(X2,X1,k3_yellow_0(X2))|~m1_subset_1(X1,u1_struct_0(X2))|~l1_orders_2(X2)), inference(spm,[status(thm)],[c_0_16, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_37, plain, (k4_yellow_0(X1)=k3_yellow_0(X1)|r2_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))|~r1_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_25, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_38, plain, (v2_struct_0(X1)|r1_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))|~v1_yellow_0(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_24, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_39, plain, (v2_struct_0(X1)|r1_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))|~v2_yellow_0(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_26, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_40, plain, (~v5_orders_2(X1)|~r1_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))|~r2_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_27, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_41, plain, (r1_orders_2(X1,X2,k2_yellow_0(X1,X3))|~r2_orders_2(X1,X2,k2_yellow_0(X1,X3))|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_28, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_42, plain, (r1_orders_2(X1,X2,k4_yellow_0(X1))|~r2_orders_2(X1,X2,k4_yellow_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_28, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_43, plain, (~v5_orders_2(X1)|~r1_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))|~r2_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_29, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_44, plain, (~v5_orders_2(X1)|~r1_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))|~r2_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_29, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_45, plain, (r1_orders_2(X1,X2,k3_yellow_0(X1))|~r2_orders_2(X1,X2,k3_yellow_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_28, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_46, plain, (~v5_orders_2(X1)|~r1_orders_2(X1,X2,k3_yellow_0(X1))|~r2_orders_2(X1,k3_yellow_0(X1),X2)|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_21, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_47, plain, (~r2_orders_2(X1,X2,X2)|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(er,[status(thm)],[c_0_30]), ['final']).
% 0.13/0.38  fof(c_0_48, plain, ![X11]:((v1_yellow_0(X11)|~v3_yellow_0(X11)|~l1_orders_2(X11))&(v2_yellow_0(X11)|~v3_yellow_0(X11)|~l1_orders_2(X11))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc4_yellow_0])])])).
% 0.13/0.38  fof(c_0_49, plain, ![X7]:(~l1_orders_2(X7)|l1_struct_0(X7)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_orders_2])])).
% 0.13/0.38  fof(c_0_50, negated_conjecture, ((((~v2_struct_0(esk1_0)&v5_orders_2(esk1_0))&v3_yellow_0(esk1_0))&l1_orders_2(esk1_0))&((~v7_struct_0(esk1_0)|k4_yellow_0(esk1_0)!=k3_yellow_0(esk1_0))&(v7_struct_0(esk1_0)|k4_yellow_0(esk1_0)=k3_yellow_0(esk1_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_31])])])])).
% 0.13/0.38  cnf(c_0_51, plain, (k2_yellow_0(X1,X2)=k3_yellow_0(X1)|v2_struct_0(X1)|r2_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))|~v1_yellow_0(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_32, c_0_33]), ['final']).
% 0.13/0.38  cnf(c_0_52, plain, (k2_yellow_0(X1,X2)=k2_yellow_0(X1,X3)|r2_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X3))|~r1_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X3))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_22, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_53, plain, (k2_yellow_0(X1,X2)=k4_yellow_0(X1)|r2_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))|~r1_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_22, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_54, plain, (k2_yellow_0(X1,X2)=k4_yellow_0(X1)|v2_struct_0(X1)|r2_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))|~v2_yellow_0(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_34, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_55, plain, (k2_yellow_0(X1,X2)=k3_yellow_0(X1)|r2_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))|~r1_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_36, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_56, plain, (k4_yellow_0(X1)=k3_yellow_0(X1)|v2_struct_0(X1)|r2_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))|~v1_yellow_0(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_37, c_0_38]), ['final']).
% 0.13/0.38  cnf(c_0_57, plain, (k4_yellow_0(X1)=k3_yellow_0(X1)|v2_struct_0(X1)|r2_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))|~v2_yellow_0(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_37, c_0_39]), ['final']).
% 0.13/0.38  cnf(c_0_58, plain, (k4_yellow_0(X1)=k3_yellow_0(X1)|r2_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))|~r1_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_36, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_59, plain, (v2_struct_0(X1)|~v1_yellow_0(X1)|~v5_orders_2(X1)|~r2_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_40, c_0_33]), ['final']).
% 0.13/0.38  cnf(c_0_60, plain, (r1_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X3))|~r2_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X3))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_41, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_61, plain, (r1_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))|~r2_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_42, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_62, plain, (v2_struct_0(X1)|~v2_yellow_0(X1)|~v5_orders_2(X1)|~r2_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_43, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_63, plain, (v2_struct_0(X1)|~v1_yellow_0(X1)|~v5_orders_2(X1)|~r2_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_44, c_0_38]), ['final']).
% 0.13/0.38  cnf(c_0_64, plain, (v2_struct_0(X1)|~v2_yellow_0(X1)|~v5_orders_2(X1)|~r2_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_44, c_0_39]), ['final']).
% 0.13/0.38  cnf(c_0_65, plain, (~v5_orders_2(X1)|~r1_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X3))|~r2_orders_2(X1,k2_yellow_0(X1,X3),k2_yellow_0(X1,X2))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_27, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_66, plain, (~v5_orders_2(X1)|~r1_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))|~r2_orders_2(X1,k2_yellow_0(X1,X2),k4_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_27, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_67, plain, (v2_struct_0(X1)|r1_orders_2(X1,k4_yellow_0(X1),k4_yellow_0(X1))|~v2_yellow_0(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_26, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_68, plain, (v2_struct_0(X1)|r1_orders_2(X1,k3_yellow_0(X1),k3_yellow_0(X1))|~v1_yellow_0(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_24, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_69, plain, (r1_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))|~r2_orders_2(X1,k4_yellow_0(X1),k2_yellow_0(X1,X2))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_41, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_70, plain, (r1_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))|~r2_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_41, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_71, plain, (r1_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))|~r2_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_45, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_72, plain, (r1_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))|~r2_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_42, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_73, plain, (r1_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))|~r2_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_45, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_74, plain, (~v5_orders_2(X1)|~r1_orders_2(X1,k2_yellow_0(X1,X2),k3_yellow_0(X1))|~r2_orders_2(X1,k3_yellow_0(X1),k2_yellow_0(X1,X2))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_46, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_75, plain, (~v5_orders_2(X1)|~r1_orders_2(X1,k4_yellow_0(X1),k3_yellow_0(X1))|~r2_orders_2(X1,k3_yellow_0(X1),k4_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_46, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_76, plain, (~r2_orders_2(X1,k2_yellow_0(X1,X2),k2_yellow_0(X1,X2))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_47, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_77, plain, (~r2_orders_2(X1,k4_yellow_0(X1),k4_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_47, c_0_19]), ['final']).
% 0.13/0.38  cnf(c_0_78, plain, (~r2_orders_2(X1,k3_yellow_0(X1),k3_yellow_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_47, c_0_23]), ['final']).
% 0.13/0.38  cnf(c_0_79, plain, (v2_yellow_0(X1)|~v3_yellow_0(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_48]), ['final']).
% 0.13/0.38  cnf(c_0_80, plain, (v1_yellow_0(X1)|~v3_yellow_0(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_48]), ['final']).
% 0.13/0.38  cnf(c_0_81, plain, (l1_struct_0(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_49]), ['final']).
% 0.13/0.38  cnf(c_0_82, negated_conjecture, (v7_struct_0(esk1_0)|k4_yellow_0(esk1_0)=k3_yellow_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_50]), ['final']).
% 0.13/0.38  cnf(c_0_83, negated_conjecture, (~v7_struct_0(esk1_0)|k4_yellow_0(esk1_0)!=k3_yellow_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_50]), ['final']).
% 0.13/0.38  cnf(c_0_84, negated_conjecture, (~v2_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_50]), ['final']).
% 0.13/0.38  cnf(c_0_85, negated_conjecture, (v3_yellow_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_50]), ['final']).
% 0.13/0.38  cnf(c_0_86, negated_conjecture, (v5_orders_2(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_50]), ['final']).
% 0.13/0.38  cnf(c_0_87, negated_conjecture, (l1_orders_2(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_50]), ['final']).
% 0.13/0.38  # SZS output end Saturation
% 0.13/0.38  # Proof object total steps             : 88
% 0.13/0.38  # Proof object clause steps            : 67
% 0.13/0.38  # Proof object formula steps           : 21
% 0.13/0.38  # Proof object conjectures             : 9
% 0.13/0.38  # Proof object clause conjectures      : 6
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 18
% 0.13/0.38  # Proof object initial formulas used   : 10
% 0.13/0.38  # Proof object generating inferences   : 48
% 0.13/0.38  # Proof object simplifying inferences  : 1
% 0.13/0.38  # Parsed axioms                        : 10
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 18
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 18
% 0.13/0.38  # Processed clauses                    : 98
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 31
% 0.13/0.38  # ...remaining for further processing  : 67
% 0.13/0.38  # Other redundant clauses eliminated   : 1
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 0
% 0.13/0.38  # Generated clauses                    : 80
% 0.13/0.38  # ...of the previous two non-trivial   : 80
% 0.13/0.38  # Contextual simplify-reflections      : 0
% 0.13/0.38  # Paramodulations                      : 79
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 1
% 0.13/0.38  # Propositional unsat checks           : 0
% 0.13/0.38  #    Propositional check models        : 0
% 0.13/0.38  #    Propositional check unsatisfiable : 0
% 0.13/0.38  #    Propositional clauses             : 0
% 0.13/0.38  #    Propositional clauses after purity: 0
% 0.13/0.38  #    Propositional unsat core size     : 0
% 0.13/0.38  #    Propositional preprocessing time  : 0.000
% 0.13/0.38  #    Propositional encoding time       : 0.000
% 0.13/0.38  #    Propositional solver time         : 0.000
% 0.13/0.38  #    Success case prop preproc time    : 0.000
% 0.13/0.38  #    Success case prop encoding time   : 0.000
% 0.13/0.38  #    Success case prop solver time     : 0.000
% 0.13/0.38  # Current number of processed clauses  : 66
% 0.13/0.38  #    Positive orientable unit clauses  : 3
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 1
% 0.13/0.38  #    Non-unit-clauses                  : 62
% 0.13/0.38  # Current number of unprocessed clauses: 0
% 0.13/0.38  # ...number of literals in the above   : 0
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 0
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 1141
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 230
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 31
% 0.13/0.38  # Unit Clause-clause subsumption calls : 0
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 0
% 0.13/0.38  # BW rewrite match successes           : 0
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 3524
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.032 s
% 0.13/0.38  # System time              : 0.003 s
% 0.13/0.38  # Total time               : 0.035 s
% 0.13/0.38  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
