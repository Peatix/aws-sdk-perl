
package Paws::CloudFront::UpdateConnectionGroup;
  use Moose;
  has AnycastIpListId => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader'], required => 1);
  has Ipv6Enabled => (is => 'ro', isa => 'Bool');


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnectionGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/connection-group/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateConnectionGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'UpdateConnectionGroupRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateConnectionGroup - Arguments for method UpdateConnectionGroup on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnectionGroup2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateConnectionGroup2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnectionGroup2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateConnectionGroupResult = $cloudfront->UpdateConnectionGroup(
      Id              => 'Mystring',
      IfMatch         => 'Mystring',
      AnycastIpListId => 'Mystring',    # OPTIONAL
      Enabled         => 1,             # OPTIONAL
      Ipv6Enabled     => 1,             # OPTIONAL
    );

    # Results:
    my $ConnectionGroup = $UpdateConnectionGroupResult->ConnectionGroup;
    my $ETag            = $UpdateConnectionGroupResult->ETag;

    # Returns a L<Paws::CloudFront::UpdateConnectionGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateConnectionGroup>

=head1 ATTRIBUTES


=head2 AnycastIpListId => Str

The ID of the Anycast static IP list.



=head2 Enabled => Bool

Whether the connection group is enabled.



=head2 B<REQUIRED> Id => Str

The ID of the connection group.



=head2 B<REQUIRED> IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
connection group that you're updating.



=head2 Ipv6Enabled => Bool

Enable IPv6 for the connection group. For more information, see Enable
IPv6
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesEnableIPv6)
in the I<Amazon CloudFront Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnectionGroup2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

