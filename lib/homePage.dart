import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  State<StatefulWidget> createState() => homePageState();
}

class homePageState extends State<StatefulWidget> {
  String url =
      'https://www.google.com/imgres?imgurl=http%3A%2F%2Fwallpaperset.com%2Fw%2Ffull%2F1%2Fd%2F1%2F470574.jpg&tbnid=FxpFi2Z-h7OyXM&vet=12ahUKEwj-9f-zj67-AhUmmycCHfPWDNwQMygBegUIARCxAQ..i&imgrefurl=https%3A%2F%2Fwallpaperset.com%2Fbest-3d-wallpaper&docid=U0y3NpHQmDDsmM&w=2560&h=1920&q=best%203d%20images%20download&ved=2ahUKEwj-9f-zj67-AhUmmycCHfPWDNwQMygBegUIARCxAQ';
  var myKey = GlobalKey();
  String url2="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgSLTXaNGewxvppoPQp8B9LjIEAvTM_Azg5HSOaDAaQA&s";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'HomePage',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          height: 100,
          width: 200,
          color: Colors.red,
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.green,
            child: ListView(
              children: [
                const DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/login.jpg'),
                      ),
                      accountEmail: Text('saqi.saqib143@gmail.com'),
                      accountName: Text('My Account'),
                    )),
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/login.jpg'),
                  ),
                  title: Text('Account 1'),
                  subtitle: Text('This is the account'),
                  trailing: Icon(Icons.add_a_photo),
                ),
                const Divider(
                  thickness: 3,
                ),
                ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage(url2)),
                  title: const Text('Account 2'),
                  subtitle: const Text('This is the account'),
                  trailing: const Icon(Icons.add_a_photo),
                ),
                const Divider(
                  thickness: 3,
                ),
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgVFhUYFRgYHBgYGBoYGBgaGhgYGBgZGRgZGRgcIS4lHB4rIRoYJjgmKy80NTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISHzQrJSs2NDY1NDQ0NDQ2NDQ0NDQ0ND00NDQxNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAMIBAwMBIgACEQEDEQH/xAAbAAEAAQUBAAAAAAAAAAAAAAAABAECAwUGB//EAD4QAAIBAgMFBQUGBAYDAQAAAAECAAMRBBIhBTFBUWETInGBkQYyQqGxUmKywdHwI3KCkhQVM6LC4UPS8XP/xAAZAQADAQEBAAAAAAAAAAAAAAAAAgMEAQX/xAArEQADAAIBBAEEAQMFAAAAAAAAAQIDESEEEjFBURMiYXEyFMHRQoGRobH/2gAMAwEAAhEDEQA/APGYiIAIiIAIiIAIiIAJmo4Zn3CbjYOwHxDbrKNWJ3KOZP5TtaFKhhhZFDuPjYC9/ujcv16zXh6SsnL4Rny51L1PLOZ2X7GVagDMMi83OUeQ3nyE6TD+xmGQd+oWP3VAHq17+kj4nbbE75E/zUnjN89NhjzyZarNfvX6N4fZrBkW/if3J/6zT7R9iAQTRcN9091vLgflLqe0TJlDaJHGPWHDS1oRPJL2meeY7Z70mKspFtDcWI8RIQnrWKpU8SmV7BrWV7ajoeY6Tzvbex3w7lSP0I4EHiJ5mfpnj5XKNuHP3cVwzUxETKaBERABERABERABERABERABERABERABERABERABERABERACs2uwdmNXqqoG8+Q4knoBc+U1ai89M9kNndjh2rEav3F8Bqx9bDyMv0+LvtIh1GTsnjyzPjKyUEFKnoo3nix4ses5jFYskyVtSvcmaDEYieplyKVpGbFBkqYjzmP/ABB5yC1WW9pMTzcmlQbejX6ydh8Ud05+lVk+jU3SsZRKg6fDVuR8pNxKJiEyPoR7jH4TyP3TxmhwtSbOnUv4y/cqWmQc6ezhtpYJqTlWFrEiQp1nthTvkfiUF/IkD5ADynJzycsqaaRux13SmxERJjiIiACIiACIiACIiACIiACIiACIiACIiACIiACIiAErZ1PNUUdZ7TtDC9nh0pj4UAPja7H1JnkXs2Aa6X3XH1nt21KJdTbfuno9EtbZ5vW198o8l2u+pAmgq3nabWw9NWIOao43qlgF/mc6DyvNBWxoG5aC+TVD5nUSmdTvll8T2uEaQgylpsKmLv8AFTP9BH0ExGoD8KnwYD5HX5TC1Ppl038EdZNoHdLQF4qw3cJLpIvAN6S2OfyJTJ2GM2VJ+Ug0EAFz3QN5Y2t5b5hxe1cg7uh4cwOduB+f0mn7YW2yLTp6RI9pMYopimbM97k2F1+7fnzG4W53tx0y16xY3MxTzs2TvrZqxx2zoRESQ4iIgAiIgAiIgAiIgAiIgAiIgAiIgAiIgAiIgAiIgBL2dUy1FPWe4VdoZsIrj3nVS3C1xqAeR3+BE8IovlYHlPQ8BtvPSChhcKqlT90WuOe6a+mrW0Y+qxd7T+DU7aoO19dOQ0Hpz6zlq6kGde+0kJyvp4zWbU2eD3l1EfJPd4Gxvt4ZzkCZnoEGVSlMqh7NHciVVF6iD7lP8CyfjB/Ea/Agc/dULoPKQwt66D7tMf7Flm0cQc7W4s3ibk6eHSXVKU9/JNrbX6JGIxoUWG8bhvAPM8z8h14atszG9iZttibDfENyUasx0VR1P5b519HB4XDiwAqsN5b3fJf1vOzjvNy+EJWWYelyzzs4V/smYmUjeLT0ltp0jp2dIjlkT9IbYWHrr2gHZDr3lPPLfW/nbwnX0b/0vYv9Tr+SPN1pk7gTMowb/ZM75RhqOi085HF9f9o0+syptpBp2NO3/wCafpKT0Hy0cfU16R502HYbwZiM9Vp4rDVNHop/SMh/22mLE+yeGrC9N8p5PqP7hqPQzl9BSW5ewXVpfyTR5dE6bbHsjWoa5brwYaqf6hu8DOdqUSpsRaYqio8o0xkm1uWY4iIg4iIgAiIgAiIgAiIgAiIgAiIgAiIgAmRKpXcZjiAEsYwnRtfr6yXhsS49xsw+yf0/SamXKxEpORoVymbd1dtSgUc2OUepkV3UG18x8LKPAHU+fpIfamUQ6xnk2cU6NrhzfEIelP8AAsiU6ZdwN8k4c/x08Kf4Fkz2ao5sSgP20v5EE/Sda3pfkRvtTf4J+MV8/wDh0LEUxZglgM1hmdiTvJ/ISG+Dvmu7DIMzbjYXA33A3kTfJZP8S3xNVIv0UAj8RnP4lj2VUji1MHw75/T0ml+NskvwSNh7J7Zi2cmmti1gATfcosxsT9AZ0OLZ27oFgBZVXcANwAmXBVqeEw1KmBnrOoqsg0tnAKtUb4RlyjnIb49z71UoPsUQEA/rILN5zZg7Znny/JC3VVv16Nfi6bjUqR5TTVsQROkOOt/5Kvm4ceaspB+Uh4rDpV4An7VMZW86RPe/pJPSLk0/4vkeOPKNHT2kVO+bvZ23rbz6TncZgGTUEMvNeHRhvB6GQQxEyrqcmKtUXeKbXB6/svbwYWuCDoQeI6iNqezWHxKkpam/L4CfD4fLTpPMMFtBkO+ddsrb+65mycmLqFp8Mx3gvG9yzmNt7BqYdyrqRb6cweI6zTz2lcVSxKdnVAYH3T8Snmp/Ked+1Ps42Ge47yHVWG5h+R5ief1HSuOV4NGDqe59t8M5mIiYzYIiIAIiIAIiIAIiIAIiIAIiIAIiIAVlJcovN7sb2bqVze1lG9joo8T+Q1jzFW9JC1cyttmiAl6ob7jO4fAYPDaOxqvyHdUee8+ogthnGlFR4O9/mbTR/TNeWtkfr78J6OUdstRG+6h9NPym59nu7iwPvkfMgSDt/DBHplb5Sul7X0ZuI375mo1slanU55H8xYH5qYNdr59NBX3Tx7Ru9od1anVyfVEmv2DhTXZ6YXMTkYA7swYgZvu94k9Ftxm29oE0cjUFgQehpoRNJ7MisK3a027MJ7zkXWx+HL8RNt3S+lpf2lrZFfwbRuMbhuzJXMWJPfc72bmfyHATWV6Zm82ht9VJNNQCd7WGa/jw8pCw3tDnOWoA6n7Q+h3jyml4l4b5Emq1vRztZ2EvbFmkgI99xcfcQ7rdW+luZnRbQ2alg471M3N+K2BYqxHMA2P7PIEGtVJ33P7EzZJqHr2y+NzS2S8BUdz3rtfTN8Y6XPvDob9LTNtHZOU94BCRcEe6RzZd6H5cjMmLx4w47OlbONHewOU8VUHTMOJ4fOaFsQxbMWJY6kkm5PU75KrmV2vn5Hmab2uESV2a+/LmHNe8PlJ+Gw1uhmuo41gb318Bf1Gs3WC2025gGHr+LNKYni/KOZO4n4R2XjOiw9da6GhV3N7rH4W4MPz6XkLBU6VYXTutv8OpW506gnqBMpwrIddCD+7GbE+NPlGKtP8ADPPts4E0ajIRYgkHxE107H2/QdorcWRCfG2X6KJx08fNKm2kejhp1CbEREkUEREAEREAES60RtHNlsStpS05o6IiJwBERADqvZXYy1L1H9xLE82J3KDw3HXpNltrbpUZEsoGgC6ADoJfsSpbBNbg+vmgt9DOdxQIu2t7XNt4HTr14C3MT05ax4lr37MWu+3v0Rmps7XdjfeQNWHjcgL5kTYYfaKUxZFBbmTmt8gPQeciYMmoj0wBc2ZbfaXh4kXHnNb2lpn7+3ley/b3cM3G18U1amrsblGt5MLgeqmYh3qSkb0NvJtR8wf7pgwdTMrpzUkfzL3vw5pk2TUFyjaBhl8OR8jY+Ubap7+f/Uc12rXwdds61bDFb3dTfqRYC3kAshbUYUEFFdMurnm594/kOgEh+zzumIVNwLqCPBtRKe0OZnY9TNOJ6h1rnwZ3P369eTS1sUTMArkG95YyHlLGQzHd23s1qUdt7N7RWorUn1DqUYcweXI8jzmuwOBNCtVDatTDFTzuBka3XMpmp2RVyuDcDXiQJ2m3EVwtRSG7Si6kqQe9SZX3jcbE+gm2X9SVT8ozV9ldq8M4TF0SDItpv6OGaqcoUs28EA2I5k/D1vJSeylQ78i+Lr+V5krBVvcot9WZ4bOYRTJuGpmdGnsq6i7ZSB9lg5/tW5+UzYbC0F3l28EI+bWnZwVH8hXmT8FPZ9WDoRpYg+XH5XnX4plCBnIVQNSeAubDqeQ8Jy+I2pTpKcoA6XDMfEjQCcvtTblSsdWJA3ch4AaCPWZQtEvpPJW/Bk9ptp9vVLDQaADkFFh52E0cqZSYap09s2TKlaQiIijCIiACIiAGW0Wi0WlxC0iUImQy1orlHUyyLReIh0pERac0dOz9jquZXpH4gCPFT+jN6TV7XJ7Q20sdLcP3umP2b7QVFNMEm+gte/MW6i861tg0wc9du9xRGBvyzMRoeYF/GehiiskKUjHdTFtv2clg64VrsuU/aWw9V3elvObarsX/ABPeRGDHXMqt2bHmwt3T1+Rm9TEUaX+nTRPvWu39zXMxVdtk/GZddItapiPLTe5RzuE9lsWjq3Ze6Qf9SnqL6j3txFx5y+v7L4lXJVAy30IenqOGhabWptc/aMxf5mTxnV02OVpNnfqZG9vRkw+z3SpTqOhQ5kD3HEEag7jccuIMkHBh85YaKCfE33fvlMuB2wy6XuDvB1+R3za4ipSNJ3vlDWvx72ugHXWaYmZlkKqt8nmmPBuQPpp5Dh9Zkw+FYUarHTLkYX94G9t3Aa/STUdXqgAd0G555Rq3yBmcNmw+Ic73/XN+U864l06T+TX3vSX6I+z8etOqylQVzHSw58CZ11SnTdMyso7NlY2tfK3Ar1FwOGp32nn2IW9U/wAx+s7bB4UlFXdlUMxPNtQOtuXjHwVTbknmS4Zr8dtQIMiAIg3AcepPE9Zrf8zPMzHtTDd4kE+asPmRNU9xGvLUPQ0wmjoMHtZw4sZs/aLDCrRGITRhYPbjf3W8eB8pxlCr3hPQcAufDVAdxRj5r3h9BKRX1sbT9E8s9lJo81qOTvMxzNiVszDrMM8Z+TevAiInDoiIgAiIgAiIgBIgCJdNaRIttKMsvveUaca4BMx2lLiWtAElsfRcTM2Gp5mC85iCToPZHAdpXRbX1F/De3yvKY4dUkJktTLZ1WEophKQAAFR1ux4qp1Cjl1/6mkxu1NTrMvtPjSajeJnL1a156eXIsa7ZMmLH3fc/LJtXHE8ZgOJMhF5UNMjzNs09iRO7Yy9HkFakyrVnZyHHJs6LkGbvBVQ6lGOjC3geB8jOapOTa2p5TcYABSDVYIOTGxPQL73ymmbT8kbkg1KXZLUO4k9mPG939AAP6pJrjLhwv2lZj6BV/5SzbTZqiKDcHv+Jc3v6WH9Mu2q2rqNyIE+a3+ZaZmtNoZc6NFWa1Un7x+s718UrYZcrrmIGYA62AtqN/8A8nn+PHfb+Y/WWUq7brzmLOsVPa2NeLvSfwT9o5rmQ8NTZs1zYKpYk+gHmSJkxTtn3nVUNvFF4TYlctO5UZVIzHKBmqWuqm29VGp6m3Gcp/UbrwOvtWjXUMGS4UaN9k7zx05+G+eh4an2eEqMdO4V/usv5zjdgFatcK495tSCQcxOjb99+M6r202mEw6Ub98gF+rC6j11PmJTFczjpoz5t1cyeb4hrsT1mKVMpPMZuQiInDoiIgAiItABEWiAEgwJWVmwkLyhErBENbOGIrAEyWlDEc6G2XTqfYjEhKwP834TOWAmbDYhka4JvL4aU0myWSe6WjdbfQs7MAbEmc+6mbR9os3vBSeZVCT43EjNUB3qvkoH0ErmSutpnMe5WmQCplpUzYKqk2y/M/rN7Q2OL09ALgsxA1IuePgJOelq/DGrMp8nNUsKTqSAP3u4H1k7DJSUjNmbdfWwtxIA1lNqMWcnn9OA8hpIIFjE7VD0kd7u5G7wOOZKxpNlVWupyALbN7rht+mhvfdeabG02Sowa9wSDffJ1Wl2iBhq6DX7yD81+nhLdrnOqVeLLZv5l7rHztfzjZE3LXxyv0clrf74ZstmL2xpn4kYKf5GP5N+IyzEtmNZuY+tRJg9k8RlrIDuJAPnJRpnLUuPsD1f/qUj7kn8k6+2tGl2mP4jfzN9TI+HW7aSTtcfxX/mb8RkjZNKxzkE5SLAb2Y+4o6k28gZmqd20XT1Jf2H8Vm3WNlPILZM3jcWXrrwk3bHdoIoFr3a3Ibl/wCfje8rs2h2j2JGVe87D3SVGpH3VGg8zxmu2/jc7m24aAclGgHp+c1OVjwtvyyW3VpfBC2fijScON4II8QbiSdtbUbEOzkWzG9huHITWRaYE2lou5Xd3eylpSXSoEXQ2yyLS8ymaGkGymWUtLgZWGkBbaJdKWhoCkS60Q0zmzJaXCDLlmhInsoZUQRKgRkjhS0ttL/lLTBoEW36S8eEsA8JkWcR1l6iLSwsBvlwqX3XlFUitMy09Ded1sjG06iKpYI6iwLbmHC54HxnBoh5EzIjOuoBE1YrceuGRyx3ezp9r4VVN6lJkB3OneQ9bfoZo6uz1bWmyt0Gjf2n8ryXgNqVhoTZTvBsQfFdxk2vgsNVF79k/Nb5Seq6kesesDyLulf88E1fY9P/AK5Obpl6baXFj6GbLHIrYcsotZgxUbgXWxK9DlGnDWXLTYNldkqqNxYkNbo1r+t5KxVBOydUOrWtmPI7okdNk7aTXp8f4KVlXcjm9lvlcHkRO2x2Ftu/8lRCPA97/nbynJYDZxzi5XxubfSdutQO6L7y0gL2vqRoLeLWh0mGlOqWjme13bTOVq7ParVYgaXZrnQAXuSTwEudfdVPiutPnY916pHNvdXoDynRYunmJopZEHeqleCj4b37zE6TX0WVGdmYZz3Uy7kUCwC34gWHqd8pPSt03635F+tpf2I+0Kq4en2K+8f9QjmPgHgd/XwnMstzebLF0CxuGDfKQ+xMh1EVVaa4XgtiaS88kfs4KTMyWmJlPWZKjXoqq2WFDLchmUSjGI4XkZUzCRLZmMsKydSMmWReXESyI+DqK3lQZSUnNsNF2aVlkTvcw0S2MAy1nlhaaapJk0jMJUTErdZdmnZpHGjIJjZ5Y1SYzcxLy+kdU/JcakZzMdpUCS7qY+kZFmanMIMuDSsNIWlsmo3WZxU/djNerzIKk2xm14IVBLaoessNSYL9ZUERnkbOKEjOtY8B6WmVaxH7EiGuBpf0ly1PLx/W8ec2uNg4/BNGIO8D5iSaO03XW58iJrC/Pd4mGe0qs7Xsm8afo3T7UsmRdLm5ItdjzYnfNaWPE3vIhqiU7XrOPqU/J1YteCTaWluvrMJqczfylhq/u8nWVDKGSA/P8pZUAkd3/d5QOZKsyfDHUeyrIJgYWlzvMTtMmSkVlMoWgNMcrM/cymjI0xyt5QiDewRW0tlQYIivkCkREU6ZJVYiWnyKy+UaViPXgVFglxiJxHSwykREfk6BMixEaQZcsvWIlpJsrKPETteDi8llOZYidjwFeTJT3TC/vCIncvhf7HZKcYiIiBl4lWiJReDjMDwYiZ35HRQzE0REsZFBKGIk/QwlViJxeQKiGiIzOFsREU6f/9k='),
                  ),
                  title: Text('Account 3'),
                  subtitle: Text('This is the account'),
                  trailing: Icon(Icons.add_a_photo),
                ),
                const Divider(
                  thickness: 3,
                ),
              ],
            ),
          ),
        ));
  }
}
