%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:33:38 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   70 ( 613 expanded)
%              Number of clauses        :   47 ( 275 expanded)
%              Number of leaves         :   11 ( 168 expanded)
%              Depth                    :   15
%              Number of atoms          :   81 ( 631 expanded)
%              Number of equality atoms :   63 ( 604 expanded)
%              Maximal formula depth    :    6 (   2 average)
%              Maximal clause size      :    4 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t51_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t51_xboole_1)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(t2_boole,axiom,(
    ! [X1] : k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_boole)).

fof(t40_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t40_xboole_1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t39_xboole_1)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).

fof(t49_xboole_1,axiom,(
    ! [X1,X2,X3] : k3_xboole_0(X1,k4_xboole_0(X2,X3)) = k4_xboole_0(k3_xboole_0(X1,X2),X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_xboole_1)).

fof(t47_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t47_xboole_1)).

fof(d7_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k3_xboole_0(X1,X2) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_xboole_0)).

fof(t81_xboole_1,conjecture,(
    ! [X1,X2,X3] :
      ( r1_xboole_0(X1,k4_xboole_0(X2,X3))
     => r1_xboole_0(X2,k4_xboole_0(X1,X3)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t81_xboole_1)).

fof(c_0_11,plain,(
    ! [X24,X25] : k2_xboole_0(k3_xboole_0(X24,X25),k4_xboole_0(X24,X25)) = X24 ),
    inference(variable_rename,[status(thm)],[t51_xboole_1])).

fof(c_0_12,plain,(
    ! [X16,X17] : k4_xboole_0(X16,k4_xboole_0(X16,X17)) = k3_xboole_0(X16,X17) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_13,plain,(
    ! [X8] : k3_xboole_0(X8,k1_xboole_0) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t2_boole])).

fof(c_0_14,plain,(
    ! [X12,X13] : k4_xboole_0(k2_xboole_0(X12,X13),X13) = k4_xboole_0(X12,X13) ),
    inference(variable_rename,[status(thm)],[t40_xboole_1])).

fof(c_0_15,plain,(
    ! [X4,X5] : k2_xboole_0(X4,X5) = k2_xboole_0(X5,X4) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

cnf(c_0_16,plain,
    ( k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_18,plain,(
    ! [X9,X10] : k2_xboole_0(X9,k4_xboole_0(X10,X9)) = k2_xboole_0(X9,X10) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

cnf(c_0_19,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_20,plain,(
    ! [X11] : k4_xboole_0(X11,k1_xboole_0) = X11 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

cnf(c_0_21,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_22,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_23,plain,
    ( k2_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X2)),k4_xboole_0(X1,X2)) = X1 ),
    inference(rw,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_24,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_25,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_19,c_0_17])).

cnf(c_0_26,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_27,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X1) = k4_xboole_0(X2,X1) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_28,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X1,X2)) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23,c_0_22]),c_0_24]),c_0_22])).

cnf(c_0_29,plain,
    ( k4_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_25,c_0_26])).

fof(c_0_30,plain,(
    ! [X18,X19,X20] : k3_xboole_0(X18,k4_xboole_0(X19,X20)) = k4_xboole_0(k3_xboole_0(X18,X19),X20) ),
    inference(variable_rename,[status(thm)],[t49_xboole_1])).

fof(c_0_31,plain,(
    ! [X14,X15] : k4_xboole_0(X14,k3_xboole_0(X14,X15)) = k4_xboole_0(X14,X15) ),
    inference(variable_rename,[status(thm)],[t47_xboole_1])).

cnf(c_0_32,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_28]),c_0_29])).

cnf(c_0_33,plain,
    ( k3_xboole_0(X1,k4_xboole_0(X2,X3)) = k4_xboole_0(k3_xboole_0(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_34,plain,
    ( k2_xboole_0(X1,k2_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_21]),c_0_24])).

cnf(c_0_35,plain,
    ( k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_36,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_32,c_0_21])).

cnf(c_0_37,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X2,X3))) = k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X3) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_17]),c_0_17])).

cnf(c_0_38,plain,
    ( k2_xboole_0(X1,k2_xboole_0(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(spm,[status(thm)],[c_0_34,c_0_22])).

cnf(c_0_39,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X2))) = k4_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_35,c_0_17])).

cnf(c_0_40,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X2,X1))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_28])).

fof(c_0_41,plain,(
    ! [X6,X7] :
      ( ( ~ r1_xboole_0(X6,X7)
        | k3_xboole_0(X6,X7) = k1_xboole_0 )
      & ( k3_xboole_0(X6,X7) != k1_xboole_0
        | r1_xboole_0(X6,X7) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).

fof(c_0_42,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( r1_xboole_0(X1,k4_xboole_0(X2,X3))
       => r1_xboole_0(X2,k4_xboole_0(X1,X3)) ) ),
    inference(assume_negation,[status(cth)],[t81_xboole_1])).

cnf(c_0_43,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_38]),c_0_29])).

cnf(c_0_44,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),k4_xboole_0(X2,X1)) = k4_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(spm,[status(thm)],[c_0_21,c_0_24])).

cnf(c_0_45,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X2,X1)) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_40]),c_0_26])).

cnf(c_0_46,plain,
    ( k3_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

fof(c_0_47,negated_conjecture,
    ( r1_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0))
    & ~ r1_xboole_0(esk2_0,k4_xboole_0(esk1_0,esk3_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_42])])])).

cnf(c_0_48,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X2,X1)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_43,c_0_22])).

cnf(c_0_49,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),k4_xboole_0(X2,X1)) = X1 ),
    inference(rw,[status(thm)],[c_0_44,c_0_45])).

cnf(c_0_50,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_46,c_0_17])).

cnf(c_0_51,negated_conjecture,
    ( r1_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_52,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(k2_xboole_0(X2,X1),X3))) = k4_xboole_0(X1,X3) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_48]),c_0_26])).

cnf(c_0_53,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),k4_xboole_0(X1,X2)) = X2 ),
    inference(spm,[status(thm)],[c_0_49,c_0_22])).

cnf(c_0_54,negated_conjecture,
    ( k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0))) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_55,plain,
    ( r1_xboole_0(X1,X2)
    | k3_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_56,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,X1))) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_45]),c_0_48]),c_0_26])).

cnf(c_0_57,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,k4_xboole_0(X3,X1)))) = k2_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X3))) ),
    inference(spm,[status(thm)],[c_0_24,c_0_37])).

cnf(c_0_58,negated_conjecture,
    ( k4_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0)) = esk1_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_54]),c_0_28]),c_0_26])).

cnf(c_0_59,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_60,plain,
    ( r1_xboole_0(X1,X2)
    | k4_xboole_0(X1,k4_xboole_0(X1,X2)) != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_55,c_0_17])).

cnf(c_0_61,plain,
    ( k4_xboole_0(k4_xboole_0(X1,k2_xboole_0(X2,X3)),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_56]),c_0_21])).

cnf(c_0_62,negated_conjecture,
    ( k2_xboole_0(esk3_0,k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0))) = esk3_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_29]),c_0_59])).

cnf(c_0_63,plain,
    ( r1_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_45]),c_0_29])])).

cnf(c_0_64,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,X3))) = k4_xboole_0(k4_xboole_0(X1,X2),X3) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_32]),c_0_26])).

cnf(c_0_65,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(X1,esk3_0),k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0))) = k4_xboole_0(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_66,plain,
    ( r1_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,k4_xboole_0(X3,X1)))) ),
    inference(spm,[status(thm)],[c_0_63,c_0_37])).

cnf(c_0_67,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(esk1_0,esk3_0),k4_xboole_0(esk1_0,esk2_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64,c_0_65]),c_0_29])).

cnf(c_0_68,negated_conjecture,
    ( ~ r1_xboole_0(esk2_0,k4_xboole_0(esk1_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_69,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_67]),c_0_26]),c_0_68]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:56:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.42  # AutoSched0-Mode selected heuristic G_____Y1346__C12_02_nc_F1_AE_CS_SP_S2S
% 0.19/0.42  # and selection function SelectNewComplexAHP.
% 0.19/0.42  #
% 0.19/0.42  # Preprocessing time       : 0.026 s
% 0.19/0.42  # Presaturation interreduction done
% 0.19/0.42  
% 0.19/0.42  # Proof found!
% 0.19/0.42  # SZS status Theorem
% 0.19/0.42  # SZS output start CNFRefutation
% 0.19/0.42  fof(t51_xboole_1, axiom, ![X1, X2]:k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t51_xboole_1)).
% 0.19/0.42  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.19/0.42  fof(t2_boole, axiom, ![X1]:k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_boole)).
% 0.19/0.42  fof(t40_xboole_1, axiom, ![X1, X2]:k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t40_xboole_1)).
% 0.19/0.42  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.19/0.42  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.19/0.42  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_boole)).
% 0.19/0.42  fof(t49_xboole_1, axiom, ![X1, X2, X3]:k3_xboole_0(X1,k4_xboole_0(X2,X3))=k4_xboole_0(k3_xboole_0(X1,X2),X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t49_xboole_1)).
% 0.19/0.42  fof(t47_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t47_xboole_1)).
% 0.19/0.42  fof(d7_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k3_xboole_0(X1,X2)=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d7_xboole_0)).
% 0.19/0.42  fof(t81_xboole_1, conjecture, ![X1, X2, X3]:(r1_xboole_0(X1,k4_xboole_0(X2,X3))=>r1_xboole_0(X2,k4_xboole_0(X1,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t81_xboole_1)).
% 0.19/0.42  fof(c_0_11, plain, ![X24, X25]:k2_xboole_0(k3_xboole_0(X24,X25),k4_xboole_0(X24,X25))=X24, inference(variable_rename,[status(thm)],[t51_xboole_1])).
% 0.19/0.42  fof(c_0_12, plain, ![X16, X17]:k4_xboole_0(X16,k4_xboole_0(X16,X17))=k3_xboole_0(X16,X17), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.19/0.42  fof(c_0_13, plain, ![X8]:k3_xboole_0(X8,k1_xboole_0)=k1_xboole_0, inference(variable_rename,[status(thm)],[t2_boole])).
% 0.19/0.42  fof(c_0_14, plain, ![X12, X13]:k4_xboole_0(k2_xboole_0(X12,X13),X13)=k4_xboole_0(X12,X13), inference(variable_rename,[status(thm)],[t40_xboole_1])).
% 0.19/0.42  fof(c_0_15, plain, ![X4, X5]:k2_xboole_0(X4,X5)=k2_xboole_0(X5,X4), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.19/0.42  cnf(c_0_16, plain, (k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.42  cnf(c_0_17, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.42  fof(c_0_18, plain, ![X9, X10]:k2_xboole_0(X9,k4_xboole_0(X10,X9))=k2_xboole_0(X9,X10), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.19/0.42  cnf(c_0_19, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.42  fof(c_0_20, plain, ![X11]:k4_xboole_0(X11,k1_xboole_0)=X11, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.19/0.42  cnf(c_0_21, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.42  cnf(c_0_22, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.42  cnf(c_0_23, plain, (k2_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X2)),k4_xboole_0(X1,X2))=X1), inference(rw,[status(thm)],[c_0_16, c_0_17])).
% 0.19/0.42  cnf(c_0_24, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.42  cnf(c_0_25, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0))=k1_xboole_0), inference(rw,[status(thm)],[c_0_19, c_0_17])).
% 0.19/0.42  cnf(c_0_26, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.42  cnf(c_0_27, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X1)=k4_xboole_0(X2,X1)), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.19/0.42  cnf(c_0_28, plain, (k2_xboole_0(X1,k4_xboole_0(X1,X2))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23, c_0_22]), c_0_24]), c_0_22])).
% 0.19/0.42  cnf(c_0_29, plain, (k4_xboole_0(X1,X1)=k1_xboole_0), inference(rw,[status(thm)],[c_0_25, c_0_26])).
% 0.19/0.42  fof(c_0_30, plain, ![X18, X19, X20]:k3_xboole_0(X18,k4_xboole_0(X19,X20))=k4_xboole_0(k3_xboole_0(X18,X19),X20), inference(variable_rename,[status(thm)],[t49_xboole_1])).
% 0.19/0.42  fof(c_0_31, plain, ![X14, X15]:k4_xboole_0(X14,k3_xboole_0(X14,X15))=k4_xboole_0(X14,X15), inference(variable_rename,[status(thm)],[t47_xboole_1])).
% 0.19/0.42  cnf(c_0_32, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X1)=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_28]), c_0_29])).
% 0.19/0.42  cnf(c_0_33, plain, (k3_xboole_0(X1,k4_xboole_0(X2,X3))=k4_xboole_0(k3_xboole_0(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.19/0.42  cnf(c_0_34, plain, (k2_xboole_0(X1,k2_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_21]), c_0_24])).
% 0.19/0.42  cnf(c_0_35, plain, (k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.19/0.42  cnf(c_0_36, plain, (k4_xboole_0(k4_xboole_0(X1,X2),k2_xboole_0(X1,X2))=k1_xboole_0), inference(spm,[status(thm)],[c_0_32, c_0_21])).
% 0.19/0.42  cnf(c_0_37, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X2,X3)))=k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X3)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_17]), c_0_17])).
% 0.19/0.42  cnf(c_0_38, plain, (k2_xboole_0(X1,k2_xboole_0(X1,X2))=k2_xboole_0(X1,X2)), inference(spm,[status(thm)],[c_0_34, c_0_22])).
% 0.19/0.42  cnf(c_0_39, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X2)))=k4_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_35, c_0_17])).
% 0.19/0.42  cnf(c_0_40, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X2,X1)))=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_28])).
% 0.19/0.42  fof(c_0_41, plain, ![X6, X7]:((~r1_xboole_0(X6,X7)|k3_xboole_0(X6,X7)=k1_xboole_0)&(k3_xboole_0(X6,X7)!=k1_xboole_0|r1_xboole_0(X6,X7))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).
% 0.19/0.42  fof(c_0_42, negated_conjecture, ~(![X1, X2, X3]:(r1_xboole_0(X1,k4_xboole_0(X2,X3))=>r1_xboole_0(X2,k4_xboole_0(X1,X3)))), inference(assume_negation,[status(cth)],[t81_xboole_1])).
% 0.19/0.42  cnf(c_0_43, plain, (k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_38]), c_0_29])).
% 0.19/0.42  cnf(c_0_44, plain, (k4_xboole_0(k2_xboole_0(X1,X2),k4_xboole_0(X2,X1))=k4_xboole_0(X1,k4_xboole_0(X2,X1))), inference(spm,[status(thm)],[c_0_21, c_0_24])).
% 0.19/0.42  cnf(c_0_45, plain, (k4_xboole_0(X1,k4_xboole_0(X2,X1))=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_40]), c_0_26])).
% 0.19/0.42  cnf(c_0_46, plain, (k3_xboole_0(X1,X2)=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.19/0.42  fof(c_0_47, negated_conjecture, (r1_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0))&~r1_xboole_0(esk2_0,k4_xboole_0(esk1_0,esk3_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_42])])])).
% 0.19/0.42  cnf(c_0_48, plain, (k4_xboole_0(X1,k2_xboole_0(X2,X1))=k1_xboole_0), inference(spm,[status(thm)],[c_0_43, c_0_22])).
% 0.19/0.42  cnf(c_0_49, plain, (k4_xboole_0(k2_xboole_0(X1,X2),k4_xboole_0(X2,X1))=X1), inference(rw,[status(thm)],[c_0_44, c_0_45])).
% 0.19/0.42  cnf(c_0_50, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_46, c_0_17])).
% 0.19/0.42  cnf(c_0_51, negated_conjecture, (r1_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.19/0.42  cnf(c_0_52, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(k2_xboole_0(X2,X1),X3)))=k4_xboole_0(X1,X3)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_48]), c_0_26])).
% 0.19/0.42  cnf(c_0_53, plain, (k4_xboole_0(k2_xboole_0(X1,X2),k4_xboole_0(X1,X2))=X2), inference(spm,[status(thm)],[c_0_49, c_0_22])).
% 0.19/0.42  cnf(c_0_54, negated_conjecture, (k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0)))=k1_xboole_0), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.19/0.42  cnf(c_0_55, plain, (r1_xboole_0(X1,X2)|k3_xboole_0(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.19/0.42  cnf(c_0_56, plain, (k4_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,X1)))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_45]), c_0_48]), c_0_26])).
% 0.19/0.42  cnf(c_0_57, plain, (k2_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,k4_xboole_0(X3,X1))))=k2_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X3)))), inference(spm,[status(thm)],[c_0_24, c_0_37])).
% 0.19/0.42  cnf(c_0_58, negated_conjecture, (k4_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0))=esk1_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_54]), c_0_28]), c_0_26])).
% 0.19/0.42  cnf(c_0_59, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.19/0.42  cnf(c_0_60, plain, (r1_xboole_0(X1,X2)|k4_xboole_0(X1,k4_xboole_0(X1,X2))!=k1_xboole_0), inference(rw,[status(thm)],[c_0_55, c_0_17])).
% 0.19/0.42  cnf(c_0_61, plain, (k4_xboole_0(k4_xboole_0(X1,k2_xboole_0(X2,X3)),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_56]), c_0_21])).
% 0.19/0.42  cnf(c_0_62, negated_conjecture, (k2_xboole_0(esk3_0,k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0)))=esk3_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_58]), c_0_29]), c_0_59])).
% 0.19/0.42  cnf(c_0_63, plain, (r1_xboole_0(X1,k4_xboole_0(X2,X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_45]), c_0_29])])).
% 0.19/0.42  cnf(c_0_64, plain, (k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,X3)))=k4_xboole_0(k4_xboole_0(X1,X2),X3)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_32]), c_0_26])).
% 0.19/0.42  cnf(c_0_65, negated_conjecture, (k4_xboole_0(k4_xboole_0(X1,esk3_0),k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0)))=k4_xboole_0(X1,esk3_0)), inference(spm,[status(thm)],[c_0_61, c_0_62])).
% 0.19/0.42  cnf(c_0_66, plain, (r1_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,k4_xboole_0(X3,X1))))), inference(spm,[status(thm)],[c_0_63, c_0_37])).
% 0.19/0.42  cnf(c_0_67, negated_conjecture, (k4_xboole_0(k4_xboole_0(esk1_0,esk3_0),k4_xboole_0(esk1_0,esk2_0))=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64, c_0_65]), c_0_29])).
% 0.19/0.42  cnf(c_0_68, negated_conjecture, (~r1_xboole_0(esk2_0,k4_xboole_0(esk1_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.19/0.42  cnf(c_0_69, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_67]), c_0_26]), c_0_68]), ['proof']).
% 0.19/0.42  # SZS output end CNFRefutation
% 0.19/0.42  # Proof object total steps             : 70
% 0.19/0.42  # Proof object clause steps            : 47
% 0.19/0.42  # Proof object formula steps           : 23
% 0.19/0.42  # Proof object conjectures             : 11
% 0.19/0.42  # Proof object clause conjectures      : 8
% 0.19/0.42  # Proof object formula conjectures     : 3
% 0.19/0.42  # Proof object initial clauses used    : 13
% 0.19/0.42  # Proof object initial formulas used   : 11
% 0.19/0.42  # Proof object generating inferences   : 25
% 0.19/0.42  # Proof object simplifying inferences  : 31
% 0.19/0.42  # Training examples: 0 positive, 0 negative
% 0.19/0.42  # Parsed axioms                        : 12
% 0.19/0.42  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.42  # Initial clauses                      : 14
% 0.19/0.42  # Removed in clause preprocessing      : 1
% 0.19/0.42  # Initial clauses in saturation        : 13
% 0.19/0.42  # Processed clauses                    : 417
% 0.19/0.42  # ...of these trivial                  : 173
% 0.19/0.42  # ...subsumed                          : 71
% 0.19/0.42  # ...remaining for further processing  : 173
% 0.19/0.42  # Other redundant clauses eliminated   : 0
% 0.19/0.42  # Clauses deleted for lack of memory   : 0
% 0.19/0.42  # Backward-subsumed                    : 0
% 0.19/0.42  # Backward-rewritten                   : 11
% 0.19/0.42  # Generated clauses                    : 7173
% 0.19/0.42  # ...of the previous two non-trivial   : 2085
% 0.19/0.42  # Contextual simplify-reflections      : 0
% 0.19/0.42  # Paramodulations                      : 7168
% 0.19/0.42  # Factorizations                       : 0
% 0.19/0.42  # Equation resolutions                 : 5
% 0.19/0.42  # Propositional unsat checks           : 0
% 0.19/0.42  #    Propositional check models        : 0
% 0.19/0.42  #    Propositional check unsatisfiable : 0
% 0.19/0.42  #    Propositional clauses             : 0
% 0.19/0.42  #    Propositional clauses after purity: 0
% 0.19/0.42  #    Propositional unsat core size     : 0
% 0.19/0.42  #    Propositional preprocessing time  : 0.000
% 0.19/0.42  #    Propositional encoding time       : 0.000
% 0.19/0.42  #    Propositional solver time         : 0.000
% 0.19/0.42  #    Success case prop preproc time    : 0.000
% 0.19/0.42  #    Success case prop encoding time   : 0.000
% 0.19/0.42  #    Success case prop solver time     : 0.000
% 0.19/0.42  # Current number of processed clauses  : 149
% 0.19/0.42  #    Positive orientable unit clauses  : 136
% 0.19/0.42  #    Positive unorientable unit clauses: 1
% 0.19/0.42  #    Negative unit clauses             : 1
% 0.19/0.42  #    Non-unit-clauses                  : 11
% 0.19/0.42  # Current number of unprocessed clauses: 1658
% 0.19/0.42  # ...number of literals in the above   : 1719
% 0.19/0.42  # Current number of archived formulas  : 0
% 0.19/0.42  # Current number of archived clauses   : 25
% 0.19/0.42  # Clause-clause subsumption calls (NU) : 106
% 0.19/0.42  # Rec. Clause-clause subsumption calls : 106
% 0.19/0.42  # Non-unit clause-clause subsumptions  : 50
% 0.19/0.42  # Unit Clause-clause subsumption calls : 6
% 0.19/0.42  # Rewrite failures with RHS unbound    : 0
% 0.19/0.42  # BW rewrite match attempts            : 209
% 0.19/0.42  # BW rewrite match successes           : 24
% 0.19/0.42  # Condensation attempts                : 0
% 0.19/0.42  # Condensation successes               : 0
% 0.19/0.42  # Termbank termtop insertions          : 65457
% 0.19/0.42  
% 0.19/0.42  # -------------------------------------------------
% 0.19/0.42  # User time                : 0.077 s
% 0.19/0.42  # System time              : 0.003 s
% 0.19/0.42  # Total time               : 0.080 s
% 0.19/0.42  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
