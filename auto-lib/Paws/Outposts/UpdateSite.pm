
package Paws::Outposts::UpdateSite;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Notes => (is => 'ro', isa => 'Str');
  has SiteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SiteId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sites/{SiteId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::UpdateSiteOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::UpdateSite - Arguments for method UpdateSite on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSite on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method UpdateSite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSite.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $UpdateSiteOutput = $outposts->UpdateSite(
      SiteId      => 'MySiteId',
      Description => 'MySiteDescription',    # OPTIONAL
      Name        => 'MySiteName',           # OPTIONAL
      Notes       => 'MySiteNotes',          # OPTIONAL
    );

    # Results:
    my $Site = $UpdateSiteOutput->Site;

    # Returns a L<Paws::Outposts::UpdateSiteOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/UpdateSite>

=head1 ATTRIBUTES


=head2 Description => Str





=head2 Name => Str





=head2 Notes => Str

Notes about a site.



=head2 B<REQUIRED> SiteId => Str

The ID or the Amazon Resource Name (ARN) of the site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSite in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

