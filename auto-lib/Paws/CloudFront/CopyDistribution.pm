
package Paws::CloudFront::CopyDistribution;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool');
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has PrimaryDistributionId => (is => 'ro', isa => 'Str', uri_name => 'PrimaryDistributionId', traits => ['ParamInURI'], required => 1);
  has Staging => (is => 'ro', isa => 'Bool', header_name => 'Staging', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/distribution/{PrimaryDistributionId}/copy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CopyDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CopyDistributionRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CopyDistribution - Arguments for method CopyDistribution on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyDistribution2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CopyDistribution2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyDistribution2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CopyDistributionResult = $cloudfront->CopyDistribution(
      CallerReference       => 'Mystring',
      PrimaryDistributionId => 'Mystring',
      Enabled               => 1,             # OPTIONAL
      IfMatch               => 'Mystring',    # OPTIONAL
      Staging               => 1,             # OPTIONAL
    );

    # Results:
    my $Distribution = $CopyDistributionResult->Distribution;
    my $ETag         = $CopyDistributionResult->ETag;
    my $Location     = $CopyDistributionResult->Location;

    # Returns a L<Paws::CloudFront::CopyDistributionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CopyDistribution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

A value that uniquely identifies a request to create a resource. This
helps to prevent CloudFront from creating a duplicate resource if you
accidentally resubmit an identical request.



=head2 Enabled => Bool

A Boolean flag to specify the state of the staging distribution when
it's created. When you set this value to C<True>, the staging
distribution is enabled. When you set this value to C<False>, the
staging distribution is disabled.

If you omit this field, the default value is C<True>.



=head2 IfMatch => Str

The version identifier of the primary distribution whose configuration
you are copying. This is the C<ETag> value returned in the response to
C<GetDistribution> and C<GetDistributionConfig>.



=head2 B<REQUIRED> PrimaryDistributionId => Str

The identifier of the primary distribution whose configuration you are
copying. To get a distribution ID, use C<ListDistributions>.



=head2 Staging => Bool

The type of distribution that your primary distribution will be copied
to. The only valid value is C<True>, indicating that you are copying to
a staging distribution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyDistribution2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

