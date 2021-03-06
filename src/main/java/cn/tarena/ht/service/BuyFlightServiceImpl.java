package cn.tarena.ht.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.ht.mapper.BuyFlightMapper;
import cn.tarena.ht.pojo.Flight;
import cn.tarena.ht.pojo.Site;

@Service
public class BuyFlightServiceImpl implements BuyFlightService {

	@Autowired
	BuyFlightMapper buyFlightMapper;
	
	@Override
	public List<Flight> findAllFlight() {
		return buyFlightMapper.findAllFlight();
	}


	@Override
	public List<Flight> findFlightsT(String fLocation, String fDeparture, String fStarttime) {
		List<Flight> ff = buyFlightMapper.findFlightsT(fLocation,fDeparture,fStarttime);
		System.out.println("关联仓位操作");
		for (Flight flight : ff) {
			int fid = flight.getId();
			List<Site> sList = buyFlightMapper.finAllSite(fid);
			flight.setsList(sList);
		}
		return ff;
	}

	@Override
	public List<Flight> findFlightsTC(String fLocation, String fDeparture, String fStarttime, String fCompany) {
		List<Flight> ff = buyFlightMapper.findFlightsTC(fLocation,fDeparture,fStarttime,fCompany);
		for (Flight flight : ff) {
			int fid = flight.getId();
			List<Site> sList = buyFlightMapper.finAllSite(fid);
			flight.setsList(sList);
		}
		return ff;
	}

	@Override
	public List<Site> findAllSite(Integer fid) {
		return buyFlightMapper.finAllSite(fid);
	}

}
