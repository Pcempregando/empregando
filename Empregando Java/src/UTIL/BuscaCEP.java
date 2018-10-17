package UTIL;

import java.net.URL;
import java.util.Iterator;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

/**
 *
 * @author Andre.Seoane
 */
public class BuscaCEP {
    // Properties
    private String state;
    private String city;
    private String neighborhood;
    private String street;

    private int result = 0;
    private String resultText;

    // Constructor
    @SuppressWarnings("rawtypes")
    public BuscaCEP(String CEP)
    {
        try 
        {
            URL url = new URL("http://cep.republicavirtual.com.br/web_cep.php?cep=" + CEP + "&formato=xml");

            Document document = getDocumento(url);

            Element root = document.getRootElement();

            for (Iterator i = root.elementIterator(); i.hasNext();) 
            {
                Element element = (Element) i.next();

                if(element.getQualifiedName().equals("uf")) setState(element.getText());

                if(element.getQualifiedName().equals("cidade")) setCity(element.getText());

                if(element.getQualifiedName().equals("bairro")) setNeighborhood(element.getText());

                if(element.getQualifiedName().equals("logradouro")) setStreet(element.getText());

                if(element.getQualifiedName().equals("resultado")) setResult(Integer.parseInt(element.getText()));

                if(element.getQualifiedName().equals("resultado_txt")) setResultText(element.getText());    
            }
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }

    public Document getDocumento(URL url) throws DocumentException 
    {
        SAXReader reader = new SAXReader();
        Document document = reader.read(url);

        return document;
    } 


    public String getState() 
    {
        return state;
    }
    public void setState(String state) 
    {
        this.state = state;
    }

    public String getCity() 
    {
        return city;
    }
    public void setCity(String city) 
    {
        this.city = city;
    }

    public String getNeighborhood() 
    {
        return neighborhood;
    }
    public void setNeighborhood(String neighborhood) 
    {
        this.neighborhood = neighborhood;
    }

    public String getStreet() 
    {
        return street;
    }
    public void setStreet(String street) 
    {
        this.street = street;
    }

    public int getResult() 
    {
        return result;
    }
    public void setResult(int result) 
    {
        this.result = result;
    }

    public String getResultText() 
    {
        return resultText;
    }
    public void setResultText(String resultText) 
    {
        this.resultText = resultText;
    }
}
