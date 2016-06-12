package com.dao;

import com.model.ImagesId;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface ImagesIdDao {
    ImagesId findByID(int imageIdID);

    void saveImagesId(ImagesId imageId);

    void deleteImagesIdByID(int imageIdID);

    void updateImagesId(ImagesId imageId);

    List<ImagesId> findAllImagesId();
}
