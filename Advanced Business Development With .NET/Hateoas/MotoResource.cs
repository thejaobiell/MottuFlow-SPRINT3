using MottuFlow.Hateoas;
using MottuFlow.DTOs;
using System.Collections.Generic;

namespace MottuFlow.Hateoas
{
    public class MotoResource : ResourceBase
    {
        public new int Id { get; set; }  // Identificador único da moto
        public string Placa { get; set; } = string.Empty;
        public string Modelo { get; set; } = string.Empty;
        public string Fabricante { get; set; } = string.Empty;
        public int Ano { get; set; }
        public int IdPatio { get; set; }
        public string LocalizacaoAtual { get; set; } = string.Empty;
        public List<StatusDTO> Statuses { get; set; } = new List<StatusDTO>();
    }
}

