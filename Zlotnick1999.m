%% Mimick Zlotnick paper 1994 on Virus Capsid Assembly
m = InitializeModelMassActionAmount('Zlotnick1999');

%% 11 bimolecular reactions between monomer and species
%% monomer + n-species <-> (n+1)-species
m = AddCompartment(m, 'Solution', 3, 1);

%% The monomers species and their original concentrations
drugless_capsids = {'n1','n2','n3','n4','n5','n6','n7','n8','n9','n10','n11','n12'};
m = AddState(m, 'n1', 'Solution', 2*10.^-6); % Molar (ref 1999 Zlotnick)
m = AddStatesWithSameConcentration(m, drugless_capsids(1,2:12), 'Solution', 0);

%% Outputs
m = AddOutputs(m, drugless_capsids, NamesToExpressions(drugless_capsids));
m = AddOutput(m, 'n12Times12', {'n12$' 12});
m = AddOutput(m, 'all_Subunits', {'n1$' 1; 'n2$' 2; 'n3$' 3; 'n4$' 4; 'n5$' 5; 'n6$' 6; 'n7$' 7; 'n8$' 8; 'n9$' 9; 'n10$' 10; 'n11$' 11; 'n12$' 12});


%% Parameters
k_fslow = 10.^10; % M^-1*s^-1 (ref 1999 Zlotnick) dimer and trimer formation
m = AddParameter(m, 'k_fslow', k_fslow);
k_f = 10.^12; % M^-1*s^-1 (ref 1999 Zlotnick)
m = AddParameter(m, 'k_f', k_f);
k_aContact = 10.^3; % M^-1 (ref 1999 Zlotnick)

S_2 = 5./2; % ratio of formation to dissociation (ref 1994 Zlotnick)
m = AddParameter(m, 'S_2', S_2);   
j_2 = 1; % number of contacts (ref 1994 Zlotnick as term 'c')
m = AddParameter(m, 'j_2', j_2);
k_a2 = k_aContact.^j_2.*S_2; % M^-1 (ref 1999 Zlotnick)
m = AddParameter(m, 'k_a2', k_a2);
k_b2 = k_fslow./k_a2 % s^-1 (ref 1999 Zlotnick)
m = AddParameter(m, 'k_b2', k_b2);

S_3 = 2./3;
m = AddParameter(m, 'S_3', S_3);
j_3 = 2;
m = AddParameter(m, 'j_3', j_3);
k_a3 = k_aContact.^j_3.*S_3;
m = AddParameter(m, 'k_a3', k_a3);
k_b3 = k_fslow./k_a3
m = AddParameter(m, 'k_b3', k_b3);

S_4 = 3./2;
m = AddParameter(m, 'S_4', S_4);
j_4 = 2;
m = AddParameter(m, 'j_4', j_4);
k_a4 = k_aContact.^j_4.*S_4;
m = AddParameter(m, 'k_a4', k_a4);
k_b4 = k_f./k_a4;
m = AddParameter(m, 'k_b4', k_b4);

S_5 = 4./2;
m = AddParameter(m, 'S_5', S_5);
j_5 = 2;
m = AddParameter(m, 'j_5', j_5);
k_a5 = k_aContact.^j_5.*S_5;
m = AddParameter(m, 'k_a5', k_a5);
k_b5 = k_f./k_a5;
m = AddParameter(m, 'k_b5', k_b5);

S_6 = 1./5;
m = AddParameter(m, 'S_6', S_6);
j_6 = 3;
m = AddParameter(m, 'j_6', j_6);
k_a6 = k_aContact.^j_6.*S_6;
m = AddParameter(m, 'k_a6', k_a6);
k_b6 = k_f./k_a6;
m = AddParameter(m, 'k_b6', k_b6);

S_7 = 5./1;
m = AddParameter(m, 'S_7', S_7);
j_7 = 2;
m = AddParameter(m, 'j_7', j_7);
k_a7 = k_aContact.^j_7.*S_7;
m = AddParameter(m, 'k_a7', k_a7);
k_b7 = k_f./k_a7;
m = AddParameter(m, 'k_b7', k_b7);

S_8 = 2./4;
m = AddParameter(m, 'S_8', S_8);
j_8 = 3;
m = AddParameter(m, 'j_8', j_8);
k_a8 = k_aContact.^j_8.*S_8;
m = AddParameter(m, 'k_a8', k_a8);
k_b8 = k_f./k_a8;
m = AddParameter(m, 'k_b8', k_b8);

S_9 = 2./3;
m = AddParameter(m, 'S_9', S_9);
j_9 = 3;
m = AddParameter(m, 'j_9', j_9);
k_a9 = k_aContact.^j_9.*S_9;
m = AddParameter(m, 'k_a9', k_a9);
k_b9 = k_f./k_a9;
m = AddParameter(m, 'k_b9', k_b9);

S_10 = 3./2;
m = AddParameter(m, 'S_10', S_10);
j_10 = 3;
m = AddParameter(m, 'j_10', j_10);
k_a10 = k_aContact.^j_10.*S_10;
m = AddParameter(m, 'k_a10', k_a10);
k_b10 = k_f./k_a10;
m = AddParameter(m, 'k_b10', k_b10);

S_11 = 2./5;
m = AddParameter(m, 'S_11', S_11);
j_11 = 4;
m = AddParameter(m, 'j_11', j_11);
k_a11 = k_aContact.^j_11.*S_11;
m = AddParameter(m, 'k_a11', k_a11);
k_b11 = k_f./k_a11;
m = AddParameter(m, 'k_b11', k_b11);

S_12 = 1./12;
m = AddParameter(m, 'S_12', S_12);
j_12 = 5;
m = AddParameter(m, 'j_12', j_12);
k_a12 = k_aContact.^j_12.*S_12;
m = AddParameter(m, 'k_a12', k_a12);
k_b12 = k_f./k_a12;
m = AddParameter(m, 'k_b12', k_b12);

%% 11 BiMolecular Reactions 

m = AddReaction(m, '', {'n1', 'n1'}, {'n2'}, 'k_fslow', 'k_b2'); % n1+n1 -> n2 w/ k_f forward and k_b2 backwards
m = AddReaction(m, '', {'n1', 'n2'}, {'n3'}, 'k_fslow', 'k_b3');
m = AddReaction(m, '', {'n1', 'n3'}, {'n4'}, 'k_f', 'k_b4');
m = AddReaction(m, '', {'n1', 'n4'}, {'n5'}, 'k_f', 'k_b5');
m = AddReaction(m, '', {'n1', 'n5'}, {'n6'}, 'k_f', 'k_b6');
m = AddReaction(m, '', {'n1', 'n6'}, {'n7'}, 'k_f', 'k_b7');
m = AddReaction(m, '', {'n1', 'n7'}, {'n8'}, 'k_f', 'k_b8');
m = AddReaction(m, '', {'n1', 'n8'}, {'n9'}, 'k_f', 'k_b9');
m = AddReaction(m, '', {'n1', 'n9'}, {'n10'}, 'k_f', 'k_b10');
m = AddReaction(m, '', {'n1', 'n10'}, {'n11'}, 'k_f', 'k_b11');
m = AddReaction(m, '', {'n1', 'n11'}, {'n12'}, 'k_f', 'k_b12');

m = FinalizeModel(m);

%% Construct experiment
con = experimentInitialValue(m, [], [], [], 'InitialValueExperiment');

%% Simulate
tF = .8; % final time in seconds
sim1 = SimulateSystem(m, con, tF);

figure
times = linspace(0, tF, 600);
plot(times, sim1.y(times))
legend('n1', 'n2', 'n3', 'n4', 'n5','n6', 'n7', 'n8', 'n9', 'n10','n11', 'n12', 'n12Times12', 'all\_Subunits')
xlabel('Time (Seconds)')
ylabel('Amount (Molar)')
title('Zlotnick Plot that Mysteriously Fits Figure1B (1999)');


