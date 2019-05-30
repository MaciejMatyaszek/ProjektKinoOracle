package com.luv2code.springdemo.controllers;

import com.luv2code.springdemo.entities.*;
import com.luv2code.springdemo.service.*;
import oracle.jdbc.proxy.annotation.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SeansController {

    @Autowired
    private SeansService seansService;
    @Autowired
    private SalaService salaService;
    @Autowired
    private  FilmService filmService;
    @Autowired
    private RezerwacjeService rezerwacjeService;
    @Autowired
    private Dane_osoboweService dane_osoboweService;
    @Autowired
    private MiejscaService miejscaService;
    @Autowired
    private BiletyService biletyService;
    @Autowired
    private Rzad_fotelService rzad_fotelService;


    //pobranie seansu z sevice
    @RequestMapping("/showFilm")
    public String showFilm(Model model) {
        List<Seans> theSeans = seansService.getSeans();
        List<Film> film= filmService.getFilm();
        List<Rezerwacje> theRezerwacje= new ArrayList<>();
        List<Sala> theSala = salaService.getSala();
        theRezerwacje=rezerwacjeService.getRezerwacje();


        //List<Dane_osobowe> dane_osoboweList=dane_osoboweService.getDane_osobowe();
        //System.out.println(dane_osoboweList.size());
        System.out.println(theRezerwacje.size());
        model.addAttribute("seans", theSeans);
        model.addAttribute("rezerwacje", theRezerwacje);
        model.addAttribute("sala", theSala);
        model.addAttribute("film", film);

        return "interfaceFilm";
    }


    @RequestMapping("/showSeans")
    public String showHotel(Model model) {
        List<Seans> theSeans = seansService.getSeans();
        List<Film> film= filmService.getFilm();
      List<Rezerwacje> theRezerwacje= new ArrayList<>();
      List<Sala> theSala = salaService.getSala();
     theRezerwacje=rezerwacjeService.getRezerwacje();


        //List<Dane_osobowe> dane_osoboweList=dane_osoboweService.getDane_osobowe();
        //System.out.println(dane_osoboweList.size());
       System.out.println(theRezerwacje.size());
        model.addAttribute("seans", theSeans);
        model.addAttribute("rezerwacje", theRezerwacje);
        model.addAttribute("sala", theSala);
        model.addAttribute("film", film);

        return "interfaceSeans";
    }
    @RequestMapping("/showRezerwacje")
    public String showRezerwacje(Model model) {

        List<Rezerwacje> theRezerwacje= new ArrayList<>();
        theRezerwacje=rezerwacjeService.getRezerwacje();



        model.addAttribute("rezerwacje", theRezerwacje);


        return "interfaceRezerwacje";
    }

    @RequestMapping("/test")
    public String showTest(Model theModel) {


        return "Testowy";
    }



    @RequestMapping("/rezerwacje")
    public String showTest(Model theModel, @RequestParam("idseansu")int idseansu, @RequestParam("idfilmu") int idfilmu) {

        System.out.println("jestem przed");
        Seans seans = seansService.getSeansbyId(idseansu);
        List<Miejsca> theMiejscaList=miejscaService.getMiejscaByIdSeansu(idseansu);
        Film listFilm = filmService.getFilmById(idfilmu);
        for(Miejsca m: theMiejscaList){
            System.out.println(m.getStatus());
        }
        System.out.println("jestem po");
        theModel.addAttribute("seans", seans);
        theModel.addAttribute("miejsca", theMiejscaList);
        theModel.addAttribute("filmy", listFilm);
        System.out.println(theMiejscaList.size());

        return "rezerwacje";
    }
    @RequestMapping("/cennik")
    public String showCennik() {


        return "cennik";
    }
    @RequestMapping("/kontakt")
    public String showKontakt() {


        return "cennik";
    }

    @RequestMapping("/logowanie")
    public String showDane(Model theModel, @RequestParam("idseansu")int idseansu, @RequestParam("idfilmu") int idfilmu, @RequestParam("miejLst") List<Integer> listamiejsc) {

        System.out.println("jestem przed");
        System.out.println(listamiejsc);
        Film listFilm = filmService.getFilmById(idfilmu);

        Seans seans=seansService.getSeansbyId(idseansu);
        Dane_osobowe dane_osobowe = new Dane_osobowe();
        System.out.println("jestem po");
        theModel.addAttribute("daneosoowe", dane_osobowe);
        theModel.addAttribute("seans", seans);
        theModel.addAttribute("filmy", listFilm);
        theModel.addAttribute("Miejsca", listamiejsc);


        return "logowanie";
    }
    @GetMapping("/showFormForAddRezerwacje")
    public String showFormForAddRezerwacje( Model theModel, @RequestParam("id_rezerwacji") int idrezerwacji, @RequestParam("id_dane_osobowe")  int iddaeneosobowe){

        Seans theSeans = new Seans();
        Film theFilm = new Film();
        Sala theSala = new Sala();
        Dane_osobowe thedDane_osobowe= new Dane_osobowe();
        theSala=salaService.getSalaById(1);
        List<Integer> idsali=new ArrayList<>();
        List<String>  sidsali=new ArrayList<>();
        List<Seans> theSeansList = seansService.getSeans();
        List<Miejsca> theMiejscaList=miejscaService.getMiejscaByIdSeansu(1);
        List <Miejsca> mijescawybrane = new ArrayList<Miejsca>();
//        List<Miejsca> wszystkiemiejsca=miejscaService.getMiejscaByIdSeansu(4);
//        System.out.println(wszystkiemiejsca   +"  ");

        System.out.println(theMiejscaList.size());


        Rezerwacje rezerwacje = new Rezerwacje();
        theModel.addAttribute("rezerwacje", rezerwacje);
        theModel.addAttribute("seans", theSeans);
        theModel.addAttribute("seansList", theSeansList);
        theModel.addAttribute("nazwa", idsali);
        theModel.addAttribute("film",  theFilm);
        theModel.addAttribute("miejsca", theMiejscaList);
        theModel.addAttribute("miejscaList" , mijescawybrane);
        theModel.addAttribute("daneOsobowe", thedDane_osobowe);
        theModel.addAttribute("idrez", idrezerwacji);
        theModel.addAttribute("iddaneosobowe", iddaeneosobowe);



        return "form-forAddRezerwacje";
    }
    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model theModel){

        Seans theSeans = new Seans();
        Film theFilm = new Film();
        Sala theSala = new Sala();
        theSala=salaService.getSalaById(23);
        List<Integer> idsali=new ArrayList<>();
        List<String>  sidsali=new ArrayList<>();
        List<Film> film = filmService.getFilm();
        List<Sala> theSalaList = salaService.getSala();
        for (Sala a:theSalaList){

            idsali.add(a.getId_sali());
            System.out.println(idsali.size());
            sidsali.add(String.valueOf(a.getId_sali()));
        }


        List <String> tytuly = new ArrayList<>();
        for(Film f:film){
            tytuly.add(f.getTytul());
        }
        theModel.addAttribute("seans", theSeans);

        theModel.addAttribute("nazwa", idsali);
        theModel.addAttribute("film",  theFilm);
        theModel.addAttribute("films", film);
        theModel.addAttribute("tytuly", tytuly);


        return "form-forUpdateSeans";
    }
    @GetMapping("/showFormForAddSala")
    public String showFormForAddSala(@ModelAttribute("sala") Sala sala){




        return "form-forAddSala";
    }
    @GetMapping("/showFormForAddBilet")
    public String showFormForAddBilet(@ModelAttribute("bilety") Bilety bilety, Model theModel){

        List<Rezerwacje> rezerwacjes=rezerwacjeService.getRezerwacje();


        theModel.addAttribute("rezerwacje", rezerwacjes);

        return "form-forAddBilety";
    }
    @RequestMapping ("/showFormForUpdateSala")
    public String showFormForUpdateSala(@RequestParam("id_sali") int idsali, Model theModel){


        Sala theSala = salaService.getSalaById(idsali);

        theModel.addAttribute("sala", theSala);




        return "sala-FormUpdate";
    }
    @GetMapping("/showFormForAddDaneOsobowe")
    public String showFormForAddDaneOsobowe(@ModelAttribute("dane_osbowe") Dane_osobowe theDane_osobowe){



        return "form-forAddDaneOsobowe";
    }
    @PostMapping("/saveSeans")
    public  String saveSeans(@ModelAttribute("seans") Seans theSeans, @RequestParam("test") int test, @RequestParam("tytuly") String tytul){

        System.out.println(tytul);
      //  Seans seans= new Seans();
      //  seans.setData(theSeans.getData());
       // seans.setGodzina(theSeans.getGodzina());
       Film abc=filmService.getFilmByName(tytul).get(0);

        Sala sala=salaService.getSalaById(test);
        theSeans.setSala(sala);
        //seans.setWolnemiejsca(sala.getMiejsca());
       theSeans.setFilm(abc);
       theSeans.setWolnemiejsca(sala.getMiejsca());
       seansService.saveSeans(theSeans);



        return "redirect:/showSeans";
    }



    @PostMapping("/saveMiejsca")
    public  String saveMiejsca(@RequestParam("idsali") int idsali, @RequestParam("idseansu") int idseansu, @RequestParam("idrzadfotel") int rzadfotel, @RequestParam("status") int status ){

        Seans seans=seansService.getSeansbyId(idseansu);
        Sala sala = salaService.getSalaById(idseansu);
        Rzad_fotel rzadfotelObj= rzad_fotelService.getRzad_fotelById(rzadfotel);
        Miejsca miejsce= new Miejsca();
        miejsce.setStatus(status);
        miejsce.setRzad_fotel(rzadfotelObj);
        miejsce.setSala(sala);
        miejsce.setSeans(seans);
        miejscaService.saveMiejsca(miejsce);




        return "redirect:/showSeans";
    }







    @PostMapping("/saveStrona")
    public  String saveStrona(@ModelAttribute("dane_osobowe") Dane_osobowe theDane_osobowe, @RequestParam("idseansu") int idseansu , @RequestParam("bilet") List<String> bilet, @RequestParam("miejLista") List<Integer> miejList){
        System.out.println(idseansu);
        Seans seans=seansService.getSeansbyId(idseansu);


        dane_osoboweService.saveDane_osobowe(theDane_osobowe);


        Rezerwacje rezerwacje = new Rezerwacje();
        rezerwacje.setDane_osobowe(theDane_osobowe);
        rezerwacje.setLiczbamiejsc(miejList.size());
        rezerwacje.setSeans(seans);

       List<Miejsca> listadorezerwacji=miejscaService.getMiejscaByIdSeansu(idseansu);
        System.out.println("Lista "+listadorezerwacji.size());

        rezerwacjeService.saveRezerwacje(rezerwacje);
        int index=0;
       for(Integer miej: miejList ){

            Bilety bilety = new Bilety();
            bilety.setTyp(bilet.get(index));
           Miejsca miejsce =listadorezerwacji.get(miej-1);
           miejsce.setStatus(1);
           miejsce.addRezerwacje(rezerwacje);
            rezerwacje.addMiejsca(miejsce );
           miejscaService.saveMiejsca(miejsce);

           bilety.setRezerwacje(rezerwacje);
           biletyService.saveBilety(bilety);
            index++;


       }





        rezerwacjeService.saveRezerwacje(rezerwacje);

        return "redirect:/zakup";
    }
    @PostMapping("/saveSala")
    public  String saveSala(@ModelAttribute("sala") Sala theSala){


        salaService.saveSala(theSala);


        return "redirect:/showSeans";
    }

    @PostMapping("/saveBilety")
    public  String saveSala(@ModelAttribute("bilety") Bilety bilety, @RequestParam("typ") String typ, @RequestParam("id_rezerwacji") int id_rezerwacji){

        bilety.setTyp(typ);
        System.out.println(typ.equals("Normalny"));

        Rezerwacje rez = rezerwacjeService.getRezerwacjeById(id_rezerwacji);
        bilety.setRezerwacje(rez);
        biletyService.saveBilety(bilety);


        return "redirect:/showBilety";
    }
    @PostMapping("/saveDaneOsobowe")
    public  String saveDaneOsobowe(@ModelAttribute("dane_osobowe") Dane_osobowe theDane_osobowe){


        dane_osoboweService.saveDane_osobowe(theDane_osobowe);


        return "redirect:/showDaneOsobowe";
    }
    @GetMapping ("/deleteDaneOsobowe")
    public  String deleteDaneOsobowe(@RequestParam("id_dane_osobowe") int iddaneosobowe){



        dane_osoboweService.deleteDane_osobowe(iddaneosobowe);



        return "redirect:/showDaneOsobowe";
    }
    @RequestMapping("/zakup")
    public  String podziekowanie(){





        return "podziekowanie";
    }

    @GetMapping("/saveRezerwacje")
    public  String saveRezerwacje(@ModelAttribute("daneosobowe") Dane_osobowe theDane_osobowe, @RequestParam("test") int idseans, @RequestParam(name="miejList") List<Integer> listabiletow){

        System.out.println(listabiletow.size()+"tutaj RATUNKU" );
       Rezerwacje rezerwacje= new Rezerwacje();
        System.out.println(listabiletow.size());
        List<Miejsca> miejsca=new ArrayList<>();
        for(Integer miejsce:listabiletow){
            miejsca.add(miejscaService.getMiejscaById(miejsce));
        }
        rezerwacje.setMiejscas(miejsca);
        rezerwacje.setLiczbamiejsc(listabiletow.size());
        listabiletow.clear();
        System.out.println(listabiletow.size());
       rezerwacje.setSeans(seansService.getSeansbyId(idseans));
        dane_osoboweService.saveDane_osobowe(theDane_osobowe);
       rezerwacje.setDane_osobowe(theDane_osobowe);

       rezerwacjeService.saveRezerwacje(rezerwacje);

        return "redirect:/showSeans";
    }



    @GetMapping("/deleteRezerwacje")
    public  String deleteRezerwacje(@RequestParam("id_rezerwacji") int idrezerwacji){



       rezerwacjeService.deleteRezerwacje(idrezerwacji);
        return "redirect:/showRezerwacje";
    }



    @GetMapping("/updateRezerwacje")
    public  String updateRezerwacje(@RequestParam("imie") String imie,@RequestParam("dataurodzenia") String dataurodzenia, @RequestParam("nazwisko") String nazwisko, @RequestParam("email") String email, @RequestParam("numer") String numer, @RequestParam("test") int idseans, @RequestParam(name="miejList") List<Integer> listabiletow, @RequestParam(name="id_rezerwacji") int idrezerwacji, @RequestParam("id_dane_osobowe") int iddaneosobowe){

        System.out.println(listabiletow.size()+"tutaj RATUNKU" );
        Rezerwacje rezerwacje= rezerwacjeService.getRezerwacjeById(idrezerwacji);
        Dane_osobowe dane_osobowe=dane_osoboweService.getDane_osoboweById( iddaneosobowe);


        dane_osobowe.setData_urodzenia(dataurodzenia);
        dane_osobowe.setEmail(email);
        dane_osobowe.setImie(imie);
        dane_osobowe.setNazwisko(nazwisko);
        dane_osobowe.setNumer(numer);
        dane_osoboweService.saveDane_osobowe(dane_osobowe);


        Seans seans = seansService.getSeansbyId(idseans);



        System.out.println(listabiletow.size());
        List<Miejsca> miejsca=new ArrayList<>();
        for(Integer miejsce:listabiletow){
            miejsca.add(miejscaService.getMiejscaById(miejsce));
        }



        rezerwacje.setMiejscas(miejsca);
        rezerwacje.setLiczbamiejsc(listabiletow.size());
        listabiletow.clear();
        System.out.println(listabiletow.size());
        rezerwacje.setSeans(seansService.getSeansbyId(idseans));


        rezerwacjeService.saveRezerwacje(rezerwacje);

        return "redirect:/showSeans";
    }

    @GetMapping("/saveRezerwacje2")
    public  String saveRezerwacje2(@ModelAttribute("daneosobowe") Dane_osobowe theDane_osobowe, @ModelAttribute("rezerwacje") Rezerwacje rezerw, @RequestParam("test") int idseans, @RequestParam(name="miejList") List<Integer> listabiletow){

        System.out.println(listabiletow.size()+"tutaj RATUNKU" );
        Rezerwacje rezerwacje= new Rezerwacje();
        System.out.println(listabiletow.size());
        List<Miejsca> miejsca=new ArrayList<>();
        for(Integer miejsce:listabiletow){
            miejsca.add(miejscaService.getMiejscaById(miejsce));
        }
        rezerwacje.setMiejscas(miejsca);
        rezerwacje.setLiczbamiejsc(listabiletow.size());
        listabiletow.clear();
        System.out.println(listabiletow.size());
        rezerwacje.setSeans(seansService.getSeansbyId(idseans));
        dane_osoboweService.saveDane_osobowe(theDane_osobowe);
        rezerwacje.setDane_osobowe(theDane_osobowe);

        rezerwacjeService.saveRezerwacje(rezerwacje);

        return "redirect:/showSeans";
    }
    @RequestMapping("/showDaneOsobowe")
    public  String showDane(Model model){
        List<Seans> theSeans = seansService.getSeans();
        List<Film> film= filmService.getFilm();
        List<Rezerwacje> theRezerwacje= new ArrayList<>();
        List<Sala> theSala = salaService.getSala();
        theRezerwacje=rezerwacjeService.getRezerwacje();
        List<Dane_osobowe> theDane_osobowes = dane_osoboweService.getDane_osobowe();

        //List<Dane_osobowe> dane_osoboweList=dane_osoboweService.getDane_osobowe();
        //System.out.println(dane_osoboweList.size());
        System.out.println(theRezerwacje.size());
        model.addAttribute("seans", theSeans);
        model.addAttribute("rezerwacje", theRezerwacje);
        model.addAttribute("sala", theSala);
        model.addAttribute("film", film);
        model.addAttribute("dane_osobowe", theDane_osobowes);



        // theFilm.setSeans(seans);





        return "interfaceDaneOsobowe";
    }

    @RequestMapping("/showSala")
    public  String showSala(Model model){

        List<Sala> theSala = salaService.getSala();



        model.addAttribute("sala", theSala);




        return "interfaceSala";
    }
    @RequestMapping("/showMiejsca")
    public  String showMiejsca(Model model){

        List<Miejsca> theMiejsca = miejscaService.getMiejsca();



        model.addAttribute("miejsca", theMiejsca);




        return "interfaceMiejsca";
    }
    @RequestMapping("/showBilety")
    public  String showBilety(Model model){

    List <Bilety> bilety=biletyService.getBilety();

        model.addAttribute("bilety", bilety);




        return "interfaceBilety";
    }








    @RequestMapping("/saveFilm")
    public  String saveFilm(@ModelAttribute("film") Film theFilm){





       // theFilm.setSeans(seans);




        filmService.saveFilm(theFilm);


        return "redirect:/showFilm";
    }
    @PostMapping("/updateSeans")
    public  String updateSeans(@ModelAttribute("seans") Seans theSeans, @RequestParam("test") int test, @RequestParam("tytuly") String tytuly){

        Seans seans= new Seans();
        seans.setData(theSeans.getData());
        Film film=filmService.getFilmByName(tytuly).get(0);
        Sala sala=salaService.getSalaById(test);
        seansService.saveSeans(theSeans);
        theSeans.setSala(sala);
        theSeans.setFilm(film);



        return "redirect:/showSeans";
    }

    @RequestMapping("/updateSala")
    public  String updateSala(@ModelAttribute("sala") Sala theSala,  @RequestParam("id_sali") Integer idfilmu){



        salaService.saveSala(theSala);


        return "redirect:/showSeans";
    }
    @RequestMapping("/updateFilm")
    public  String updateFilm(@ModelAttribute("film") Film theFilm,  @RequestParam("id_filmu") Integer idfilm , @RequestParam(name="id_sLeansu", required = false) Integer idSeansu){


        System.out.println(idSeansu+ " :Seans");
        System.out.println(idfilm +" :Film");
       // Seans seans=filmService.getFilmById(idfilm).getSeans();
        //theFilm.setSeans(seans);

        filmService.saveFilm(theFilm);


        return "redirect:/showFilm";
    }



    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("id_seansu") int theId, @RequestParam("tet") Integer miejsca, Model theModel){
    //pobranie seansu z bazy
     Seans theSeans = seansService.getSeansbyId(theId);
        List<Integer> idsali=new ArrayList<>();
        List<Sala> theSalaList = salaService.getSala();
        for (Sala a:theSalaList){

            idsali.add(a.getId_sali());
            System.out.println(idsali.size());

        }
        List<Film> film=filmService.getFilm();
        List <String> tytuly = new ArrayList<>();
        for(Film f:film){
            tytuly.add(f.getTytul());
        }
        theModel.addAttribute("seans", theSeans);
        theModel.addAttribute("sala", theSalaList);
        theModel.addAttribute("nazwa", idsali);
        theModel.addAttribute("tytuly", tytuly);
    // ustawienie seansu w model Atrribiute
    theModel.addAttribute("seans", theSeans);




    return "form-forUpdateSeans";
    }
    @RequestMapping(value = "/showFormForUpdateFilm", method = RequestMethod.GET)
    public String showFormForUpdateFilm(@RequestParam(name="id_filmu", required = false) int theId, Model theModel){
        //pobranie seansu z bazy
        System.out.println(theId);

        Film theFilm=filmService.getFilmById(theId);
      //  Seans seans = seansService.getSeansbyId(theFilm.getSeans().getId_seansu());
       // theFilm.setSeans(seans);
        List<Seans> listSeans = new ArrayList<>();
        //listSeans.add(seans);
        theModel.addAttribute("film", theFilm);
        //theModel.addAttribute("seansID", seans);





        return "form-forAddFilm";
    }
    @RequestMapping("/showFormForAddFilm")
    public String showFormForAddFilm(Model theModel){
        //pobranie seansu z bazy

        Film film = new Film();
        //Seans seans = seansService.getSeansbyId(theFilm.getSeans().getId_seansu());
        //theFilm.setSeans(seans);
        List<Seans> listSeans = new ArrayList<>();
        //listSeans.add(seans);
        theModel.addAttribute("film", film);
        theModel.addAttribute("seansID", listSeans);






        return "form-forAddFilm";
    }



    @RequestMapping("/showFormForAddMiejsca")
    public String showFormForAddMiejsca(Model theModel){
        //pobranie seansu z bazy


      List <Sala> sala =salaService.getSala();
      List <Seans> seans = seansService.getSeans();
      List <Rzad_fotel> rzad_fotels = rzad_fotelService.getRzad_fotel();

        theModel.addAttribute("sala", sala);
        theModel.addAttribute("seans", seans);
        theModel.addAttribute("rzad_fotel", rzad_fotels);






        return "form-forAddMiejsca";
    }

    @RequestMapping("/showFormForAddTableFilm")
    public String showFormForAddTableFilm(@ModelAttribute("film") Film theFilm, Model theModel){








        return "film-FormAddTable";
    }

    @GetMapping("/delete")
    public String deleteSeans(@RequestParam("id_seansu") int theId){

        seansService.deleteSeans(theId);

        return "redirect:/showSeans";

    }
    @GetMapping("/deleteSala")
    public String deleteSala(@RequestParam("id_sali") int theId){

        salaService.deleteSala(theId);

        return "redirect:/showSeans";

    }
    @GetMapping("/deleteFilm")
    public String deleteFilm(@RequestParam("id_filmu") int theId){

        filmService.deleteFilm(theId);

        return "redirect:/showFilm";
    }

    @GetMapping("/deleteBilety")
    public String deleteBilety(@RequestParam("bilet_id") int theId){

        biletyService.deleteBilety(theId);

        return "redirect:/showFilm";
    }


    @GetMapping("/strona")
    public String pokazStrone(Model theModel, @RequestParam("dzienid") int dzienid){

        List<Seans> theSeans = seansService.getSeans();
        List<Film> film= filmService.getFilm();
        List<Rezerwacje> theRezerwacje= new ArrayList<>();
        List<Sala> theSala = salaService.getSala();
        theRezerwacje=rezerwacjeService.getRezerwacje();
        List<Seans> test = new ArrayList<Seans>();
        List<Film> testowo =new ArrayList<Film>();
        System.out.println("dzienid");
        if(dzienid==0) {


            test = seansService.SeansDAY2(dzienid);
            System.out.println("tutaj    " +test);
            testowo = filmService.FilmDay2(dzienid);
            System.out.println("RATUNKU " +testowo);
        }
        else{
            test=seansService.SeansDAY(dzienid);
            testowo = filmService.FilmDay(dzienid);
        }
        System.out.println(test);
        System.out.println(testowo);
        List<Film> gotowa=new ArrayList<Film>();
        for (Film f:testowo){

            for(Seans s:test){
                if(f.getId_filmu()==s.getFilm().getId_filmu()){
                    f.add(s);
                }
            }
            gotowa.add(f);
        }

        System.out.println(gotowa);




        theModel.addAttribute("gotowa", gotowa);

        return "StronaGlowna";
    }
    @GetMapping("/view")
    public String viewSeans(@RequestParam(name="id_seansu", required = false)  Integer theId, Model theModel){

        List<Film> theFilms = filmService.getFilmBySeansID(theId);
        Seans seans =seansService.getSeansbyId(theId);
        theModel.addAttribute("film", theFilms);
        theModel.addAttribute("seansId", seans);


        return "film-view";

    }

    @PostMapping("/odpalsie")
    public String showodpalsie( @RequestParam(name="miejList") List<Integer> listabiletow){


            System.out.println(listabiletow);



        return "asd";
    }



}
