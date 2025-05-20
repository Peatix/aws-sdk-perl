
package Paws::Outposts::GetSite;
  use Moose;
  has SiteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SiteId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sites/{SiteId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::GetSiteOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetSite - Arguments for method GetSite on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSite on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method GetSite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSite.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $GetSiteOutput = $outposts->GetSite(
      SiteId => 'MySiteId',

    );

    # Results:
    my $Site = $GetSiteOutput->Site;

    # Returns a L<Paws::Outposts::GetSiteOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/GetSite>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SiteId => Str

The ID or the Amazon Resource Name (ARN) of the site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSite in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

