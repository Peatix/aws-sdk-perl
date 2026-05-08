package Paws::MarketplaceDeployment;
  use Moose;
  sub service { 'deployment-marketplace' }
  sub signing_name { 'aws-marketplace' }
  sub version { '2023-01-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceDeployment::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDeploymentParameter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceDeployment::PutDeploymentParameter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceDeployment::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceDeployment::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/ListTagsForResource PutDeploymentParameter TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceDeployment - Perl Interface to AWS AWS Marketplace Deployment Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MarketplaceDeployment');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The AWS Marketplace Deployment Service supports the Quick Launch
experience, which is a deployment option for software as a service
(SaaS) products. Quick Launch simplifies and reduces the time,
resources, and steps required to configure, deploy, and launch a
products. The AWS Marketplace Deployment Service provides sellers with
a secure method for passing deployment parameters, such as API keys and
external IDs, to buyers during the Quick Launch experience.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deployment-marketplace-2023-01-25>


=head1 METHODS

=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceDeployment::ListTagsForResource>

Returns: a L<Paws::MarketplaceDeployment::ListTagsForResourceResponse> instance

Lists all tags that have been added to a deployment parameter resource.


=head2 PutDeploymentParameter

=over

=item AgreementId => Str

=item Catalog => Str

=item DeploymentParameter => L<Paws::MarketplaceDeployment::DeploymentParameterInput>

=item ProductId => Str

=item [ClientToken => Str]

=item [ExpirationDate => Str]

=item [Tags => L<Paws::MarketplaceDeployment::TagsMap>]


=back

Each argument is described in detail in: L<Paws::MarketplaceDeployment::PutDeploymentParameter>

Returns: a L<Paws::MarketplaceDeployment::PutDeploymentParameterResponse> instance

Creates or updates a deployment parameter and is targeted by C<catalog>
and C<agreementId>.


=head2 TagResource

=over

=item ResourceArn => Str

=item [Tags => L<Paws::MarketplaceDeployment::Tags>]


=back

Each argument is described in detail in: L<Paws::MarketplaceDeployment::TagResource>

Returns: a L<Paws::MarketplaceDeployment::TagResourceResponse> instance

Tags a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MarketplaceDeployment::UntagResource>

Returns: a L<Paws::MarketplaceDeployment::UntagResourceResponse> instance

Removes a tag or list of tags from a resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

