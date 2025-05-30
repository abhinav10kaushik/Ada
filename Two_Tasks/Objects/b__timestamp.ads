pragma Warnings (Off);
pragma Ada_95;
with System;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2017 (20170515-63)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_timestamp" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#33561008#;
   pragma Export (C, u00001, "timestampB");
   u00002 : constant Version_32 := 16#b6df930e#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#5bd3bf5d#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#0d7f1a43#;
   pragma Export (C, u00005, "ada__calendarB");
   u00006 : constant Version_32 := 16#5b279c75#;
   pragma Export (C, u00006, "ada__calendarS");
   u00007 : constant Version_32 := 16#a7c91b43#;
   pragma Export (C, u00007, "ada__exceptionsB");
   u00008 : constant Version_32 := 16#4b8b8db1#;
   pragma Export (C, u00008, "ada__exceptionsS");
   u00009 : constant Version_32 := 16#e947e6a9#;
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerB");
   u00010 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerS");
   u00011 : constant Version_32 := 16#6326c08a#;
   pragma Export (C, u00011, "systemS");
   u00012 : constant Version_32 := 16#4e7785b8#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#fda218df#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00014, "system__parametersB");
   u00015 : constant Version_32 := 16#1d0ccdf5#;
   pragma Export (C, u00015, "system__parametersS");
   u00016 : constant Version_32 := 16#30ad09e5#;
   pragma Export (C, u00016, "system__secondary_stackB");
   u00017 : constant Version_32 := 16#d9b43ff0#;
   pragma Export (C, u00017, "system__secondary_stackS");
   u00018 : constant Version_32 := 16#f103f468#;
   pragma Export (C, u00018, "system__storage_elementsB");
   u00019 : constant Version_32 := 16#4ee58a8e#;
   pragma Export (C, u00019, "system__storage_elementsS");
   u00020 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00020, "system__stack_checkingB");
   u00021 : constant Version_32 := 16#ed99ab62#;
   pragma Export (C, u00021, "system__stack_checkingS");
   u00022 : constant Version_32 := 16#87a448ff#;
   pragma Export (C, u00022, "system__exception_tableB");
   u00023 : constant Version_32 := 16#3e88a9c8#;
   pragma Export (C, u00023, "system__exception_tableS");
   u00024 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00024, "system__exceptionsB");
   u00025 : constant Version_32 := 16#0b45ad7c#;
   pragma Export (C, u00025, "system__exceptionsS");
   u00026 : constant Version_32 := 16#80916427#;
   pragma Export (C, u00026, "system__exceptions__machineB");
   u00027 : constant Version_32 := 16#047ef179#;
   pragma Export (C, u00027, "system__exceptions__machineS");
   u00028 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00028, "system__exceptions_debugB");
   u00029 : constant Version_32 := 16#1dac394e#;
   pragma Export (C, u00029, "system__exceptions_debugS");
   u00030 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00030, "system__img_intB");
   u00031 : constant Version_32 := 16#61fd2048#;
   pragma Export (C, u00031, "system__img_intS");
   u00032 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00032, "system__tracebackB");
   u00033 : constant Version_32 := 16#3d041e4e#;
   pragma Export (C, u00033, "system__tracebackS");
   u00034 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00034, "system__traceback_entriesB");
   u00035 : constant Version_32 := 16#637d36fa#;
   pragma Export (C, u00035, "system__traceback_entriesS");
   u00036 : constant Version_32 := 16#e635f7f0#;
   pragma Export (C, u00036, "system__traceback__symbolicB");
   u00037 : constant Version_32 := 16#9df1ae6d#;
   pragma Export (C, u00037, "system__traceback__symbolicS");
   u00038 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00038, "ada__containersS");
   u00039 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00039, "ada__exceptions__tracebackB");
   u00040 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00040, "ada__exceptions__tracebackS");
   u00041 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00041, "interfacesS");
   u00042 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00042, "interfaces__cB");
   u00043 : constant Version_32 := 16#70be4e8c#;
   pragma Export (C, u00043, "interfaces__cS");
   u00044 : constant Version_32 := 16#97d13ec4#;
   pragma Export (C, u00044, "system__address_operationsB");
   u00045 : constant Version_32 := 16#702a7eb9#;
   pragma Export (C, u00045, "system__address_operationsS");
   u00046 : constant Version_32 := 16#e865e681#;
   pragma Export (C, u00046, "system__bounded_stringsB");
   u00047 : constant Version_32 := 16#14dbe193#;
   pragma Export (C, u00047, "system__bounded_stringsS");
   u00048 : constant Version_32 := 16#13b71684#;
   pragma Export (C, u00048, "system__crtlS");
   u00049 : constant Version_32 := 16#596696a5#;
   pragma Export (C, u00049, "system__dwarf_linesB");
   u00050 : constant Version_32 := 16#e03b663a#;
   pragma Export (C, u00050, "system__dwarf_linesS");
   u00051 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00051, "ada__charactersS");
   u00052 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00052, "ada__characters__handlingB");
   u00053 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00053, "ada__characters__handlingS");
   u00054 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00054, "ada__characters__latin_1S");
   u00055 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00055, "ada__stringsS");
   u00056 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00056, "ada__strings__mapsB");
   u00057 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00057, "ada__strings__mapsS");
   u00058 : constant Version_32 := 16#cc4ff587#;
   pragma Export (C, u00058, "system__bit_opsB");
   u00059 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00059, "system__bit_opsS");
   u00060 : constant Version_32 := 16#57a0bc09#;
   pragma Export (C, u00060, "system__unsigned_typesS");
   u00061 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00061, "ada__strings__maps__constantsS");
   u00062 : constant Version_32 := 16#9f00b3d3#;
   pragma Export (C, u00062, "system__address_imageB");
   u00063 : constant Version_32 := 16#c2ca5db0#;
   pragma Export (C, u00063, "system__address_imageS");
   u00064 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00064, "system__img_unsB");
   u00065 : constant Version_32 := 16#c85480fe#;
   pragma Export (C, u00065, "system__img_unsS");
   u00066 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00066, "system__ioB");
   u00067 : constant Version_32 := 16#fd6437c5#;
   pragma Export (C, u00067, "system__ioS");
   u00068 : constant Version_32 := 16#d6ea8de4#;
   pragma Export (C, u00068, "system__mmapB");
   u00069 : constant Version_32 := 16#59577fed#;
   pragma Export (C, u00069, "system__mmapS");
   u00070 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00070, "ada__io_exceptionsS");
   u00071 : constant Version_32 := 16#81cd5347#;
   pragma Export (C, u00071, "system__mmap__os_interfaceB");
   u00072 : constant Version_32 := 16#2af642f4#;
   pragma Export (C, u00072, "system__mmap__os_interfaceS");
   u00073 : constant Version_32 := 16#2b4924dd#;
   pragma Export (C, u00073, "system__mmap__unixS");
   u00074 : constant Version_32 := 16#05e56fce#;
   pragma Export (C, u00074, "system__os_libB");
   u00075 : constant Version_32 := 16#ed466fde#;
   pragma Export (C, u00075, "system__os_libS");
   u00076 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00076, "system__case_utilB");
   u00077 : constant Version_32 := 16#472fa95d#;
   pragma Export (C, u00077, "system__case_utilS");
   u00078 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00078, "system__stringsB");
   u00079 : constant Version_32 := 16#1d99d1ec#;
   pragma Export (C, u00079, "system__stringsS");
   u00080 : constant Version_32 := 16#d0bc914c#;
   pragma Export (C, u00080, "system__object_readerB");
   u00081 : constant Version_32 := 16#2e1565f0#;
   pragma Export (C, u00081, "system__object_readerS");
   u00082 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00082, "system__val_lliB");
   u00083 : constant Version_32 := 16#f902262a#;
   pragma Export (C, u00083, "system__val_lliS");
   u00084 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00084, "system__val_lluB");
   u00085 : constant Version_32 := 16#2d52eb7b#;
   pragma Export (C, u00085, "system__val_lluS");
   u00086 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00086, "system__val_utilB");
   u00087 : constant Version_32 := 16#cf867674#;
   pragma Export (C, u00087, "system__val_utilS");
   u00088 : constant Version_32 := 16#5bbc3f2f#;
   pragma Export (C, u00088, "system__exception_tracesB");
   u00089 : constant Version_32 := 16#47f9e010#;
   pragma Export (C, u00089, "system__exception_tracesS");
   u00090 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00090, "system__wch_conB");
   u00091 : constant Version_32 := 16#785be258#;
   pragma Export (C, u00091, "system__wch_conS");
   u00092 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00092, "system__wch_stwB");
   u00093 : constant Version_32 := 16#554ace59#;
   pragma Export (C, u00093, "system__wch_stwS");
   u00094 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00094, "system__wch_cnvB");
   u00095 : constant Version_32 := 16#77ec58ab#;
   pragma Export (C, u00095, "system__wch_cnvS");
   u00096 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00096, "system__wch_jisB");
   u00097 : constant Version_32 := 16#f79c418a#;
   pragma Export (C, u00097, "system__wch_jisS");
   u00098 : constant Version_32 := 16#d083f760#;
   pragma Export (C, u00098, "system__os_primitivesB");
   u00099 : constant Version_32 := 16#e9a9d1fc#;
   pragma Export (C, u00099, "system__os_primitivesS");
   u00100 : constant Version_32 := 16#87cd2ab9#;
   pragma Export (C, u00100, "ada__calendar__delaysB");
   u00101 : constant Version_32 := 16#b27fb9e9#;
   pragma Export (C, u00101, "ada__calendar__delaysS");
   u00102 : constant Version_32 := 16#ee80728a#;
   pragma Export (C, u00102, "system__tracesB");
   u00103 : constant Version_32 := 16#913ba820#;
   pragma Export (C, u00103, "system__tracesS");
   u00104 : constant Version_32 := 16#1d1c6062#;
   pragma Export (C, u00104, "ada__text_ioB");
   u00105 : constant Version_32 := 16#c4f75f1e#;
   pragma Export (C, u00105, "ada__text_ioS");
   u00106 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00106, "ada__streamsB");
   u00107 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00107, "ada__streamsS");
   u00108 : constant Version_32 := 16#d85792d6#;
   pragma Export (C, u00108, "ada__tagsB");
   u00109 : constant Version_32 := 16#8813468c#;
   pragma Export (C, u00109, "ada__tagsS");
   u00110 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00110, "system__htableB");
   u00111 : constant Version_32 := 16#e7e47360#;
   pragma Export (C, u00111, "system__htableS");
   u00112 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00112, "system__string_hashB");
   u00113 : constant Version_32 := 16#45ba181e#;
   pragma Export (C, u00113, "system__string_hashS");
   u00114 : constant Version_32 := 16#4c01b69c#;
   pragma Export (C, u00114, "interfaces__c_streamsB");
   u00115 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00115, "interfaces__c_streamsS");
   u00116 : constant Version_32 := 16#6f0d52aa#;
   pragma Export (C, u00116, "system__file_ioB");
   u00117 : constant Version_32 := 16#c45721ef#;
   pragma Export (C, u00117, "system__file_ioS");
   u00118 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00118, "ada__finalizationS");
   u00119 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00119, "system__finalization_rootB");
   u00120 : constant Version_32 := 16#2cd4b31a#;
   pragma Export (C, u00120, "system__finalization_rootS");
   u00121 : constant Version_32 := 16#9eb95a22#;
   pragma Export (C, u00121, "system__file_control_blockS");
   u00122 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00122, "system__concat_2B");
   u00123 : constant Version_32 := 16#6186175a#;
   pragma Export (C, u00123, "system__concat_2S");
   u00124 : constant Version_32 := 16#276453b7#;
   pragma Export (C, u00124, "system__img_lldB");
   u00125 : constant Version_32 := 16#9004c9e3#;
   pragma Export (C, u00125, "system__img_lldS");
   u00126 : constant Version_32 := 16#bd3715ff#;
   pragma Export (C, u00126, "system__img_decB");
   u00127 : constant Version_32 := 16#cd0bc951#;
   pragma Export (C, u00127, "system__img_decS");
   u00128 : constant Version_32 := 16#9dca6636#;
   pragma Export (C, u00128, "system__img_lliB");
   u00129 : constant Version_32 := 16#7269955b#;
   pragma Export (C, u00129, "system__img_lliS");
   u00130 : constant Version_32 := 16#a6359005#;
   pragma Export (C, u00130, "system__memoryB");
   u00131 : constant Version_32 := 16#3a5ba6be#;
   pragma Export (C, u00131, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_dec%s
   --  system.img_dec%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.img_lld%s
   --  system.img_lld%b
   --  system.io%s
   --  system.io%b
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.val_util%s
   --  system.standard_library%s
   --  system.exception_traces%s
   --  ada.exceptions%s
   --  system.wch_stw%s
   --  system.val_util%b
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.os_lib%s
   --  system.bit_ops%s
   --  ada.characters.handling%s
   --  ada.exceptions.traceback%s
   --  system.soft_links%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.containers%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.secondary_stack%s
   --  system.address_image%s
   --  system.bounded_strings%s
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.wch_stw%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  system.os_lib%b
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%b
   --  interfaces.c%s
   --  ada.exceptions.traceback%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  system.bounded_strings%b
   --  ada.exceptions.last_chance_handler%b
   --  system.standard_library%b
   --  system.mmap%s
   --  ada.strings.maps%b
   --  interfaces.c%b
   --  system.object_reader%s
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  system.mmap.unix%s
   --  system.mmap.os_interface%s
   --  system.mmap%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  system.object_reader%b
   --  system.mmap.os_interface%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  timestamp%b
   --  END ELABORATION ORDER

end ada_main;
