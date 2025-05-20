
package Paws::CloudFront::UpdateDistributionWithStagingConfig;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has StagingDistributionId => (is => 'ro', isa => 'Str', query_name => 'StagingDistributionId', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDistributionWithStagingConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/distribution/{Id}/promote-staging-config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateDistributionWithStagingConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateDistributionWithStagingConfig - Arguments for method UpdateDistributionWithStagingConfig on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDistributionWithStagingConfig2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateDistributionWithStagingConfig2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDistributionWithStagingConfig2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateDistributionWithStagingConfigResult =
      $cloudfront->UpdateDistributionWithStagingConfig(
      Id                    => 'Mystring',
      IfMatch               => 'Mystring',    # OPTIONAL
      StagingDistributionId => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $Distribution = $UpdateDistributionWithStagingConfigResult->Distribution;
    my $ETag         = $UpdateDistributionWithStagingConfigResult->ETag;

# Returns a L<Paws::CloudFront::UpdateDistributionWithStagingConfigResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateDistributionWithStagingConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the primary distribution to which you are copying a
staging distribution's configuration.



=head2 IfMatch => Str

The current versions (C<ETag> values) of both primary and staging
distributions. Provide these in the following format:

C<E<lt>primary ETagE<gt>, E<lt>staging ETagE<gt>>



=head2 StagingDistributionId => Str

The identifier of the staging distribution whose configuration you are
copying to the primary distribution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDistributionWithStagingConfig2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

