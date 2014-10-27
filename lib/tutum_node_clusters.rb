class TutumNodeClusters < TutumApi
  def list_url
    "/nodecluster/"
  end

  def list
    http_get(list_url)
  end

  def create_url
    "/nodecluster/"
  end

  def create(params)
    http_post(create_url, params)
  end

  def get_url(uuid)
    "/nodecluster/#{uuid}/"
  end

  def get(uuid)
    http_get(get_url(uuid))
  end

  def update_url(uuid)
    "/nodecluster/#{uuid}/"
  end

  def update(uuid, params)
    http_put(update_url(uuid), params)
  end

  def deploy_url(uuid)
    "/nodecluster/#{uuid}/deploy/"
  end

  def deploy(uuid, params)
    http_post(deploy_url(uuid), params)
  end

  def terminate_url(uuid)
    "/nodecluster/#{uuid}/"
  end

  def terminate(uuid)
    delete(terminate_url(uuid))
  end

end
