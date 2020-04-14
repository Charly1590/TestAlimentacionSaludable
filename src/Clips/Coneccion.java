/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clips;
import net.sf.clipsrules.jni.*;
/**
 *
 * @author Charly
 */
public class Coneccion {
    private Environment clips;
    
    public Coneccion() throws CLIPSLoadException{
        clips=new Environment();
        clips.load("Alimentacion.clp");
    }

    public Environment getClips() {
        return clips;
    }

    public void setClips(Environment clips) {
        this.clips = clips;
    }
    
}
